## How to send an email using .NET

### Using MailerSend API

#### Make mail interface
```cs
public interface IMailClient
{
  Task<string> SendEmail (Email data);
}
```

#### Create Models

##### Email
```cs
public class Email
{
  // Say to copiler that this field most be parse as "from"
  [JsonPropertyName("from")]
  public Recipent? From {get; set;}

  [JsonPropertyName("to")]
  public Recipent[]? To {get; set;}

  [JsonPropertyName("subject")]
  public string? Subject {get; set;}

  [JsonPropertyName("text")]
  public string? Text {get; set;}

  [JsonPropertyName("html")]
  public string? Html {get; set;}
}
```

##### Recipent
```cs
public class Recipent
{
  [JsonPropertyName("email")]
  public string Email {get; set;}

  [JsonPropertyName("name")]
  public string? Name {get; set;}
}
```

##### Configuration
```cs
public class MailerSendClientOptions
{
  public string ApiToken {get; set;}
  public string ApiUrl {get; set;}
}
```

#### Make Controller
```cs
public class MailerSendClient: IMailClient
{
  private readonly HttpClient _httpClient = new HttpClient();
  private readonly MailerSendClientOptions _options;

  public MailerSendClient (MailerSendClientOptions options)
  {
    _options = options;
  }

  public async Task<string> SendEmail(Email data)
  {
    using HttpResponseMessage response = await PostEmail(data);
    return await response.Content.ReadAsStringAsync();
  }

  private async Task<HttpResponseMessage> PostEmail (Email data)
  {
    // Serialize email information
    StringContent content = new StringContent(JsonSerializer.Serialize(data), Encoding.UTF8, "application/json");
      
    _httpClient.DefaultRequestHeaders.Add("ContentType", "application/json");

    // Add Token
    _httpClient.DefaultRequestHeaders.Add("Authorization", $"Bearer {_options.ApiToken}");

    HttpResponseMessage response = await _httpClient.PostAsync(_options.ApiUrl, content);

    response.EnsureSuccessStatusCode();

    return response;
  }
}
```

#### Implementation
I used it in a function, but can be implemented anywhere

```cs
public async Task<string> GetAll()
{
  var options = new MailerSendClientOptions
  {
    // Put your domain api token
    ApiToken = "<Your domain API Token>",
    ApiUrl = "https://api.mailersend.com/v1/email"
  };

  Email newEmail = new Email
  {
    // Put your mail name, followed by your domain
    // Example: dannyKentala@trial-pa1enl30en8l2xwr.mlsender.net 
    From = new Recipent{Email = "<email_name>@<domain>"},
    To = 
    [
      // person who will recibe the email
      new Recipent{Email = "jabele2887@crodity.com"}
    ],
    Subject = "Email from backend",
    Text = "This is an email generate from backend, backend i'm loving it"
    // Html is not necesary if you have text
    // Html = "<b>Hello HTML, son of the futass!!!</b>"
  };

  // Make an intance, should be change for Singlenton
  MailerSendClient mailerSendClient = new MailerSendClient(options);
  string emailInfo = await mailerSendClient.SendEmail(newEmail);
  return emailInfo;
}
```

## References
https://github.com/vassilis-panos/MailerSend.AspNetCore/blob/main/README.md

https://www.canva.com/design/DAGGvRBbWWg/CtkJVQKiOruWbR0Zo_4XXA/edit

https://developers.mailersend.com/api/v1/email.html#send-an-email

https://zetcode.com/csharp/httpclient/

https://josipmisko.com/posts/c-sharp-httpclient#httpclient-fundamentals

https://learn.microsoft.com/en-us/dotnet/fundamentals/networking/http/httpclient

Stevejgordon. (2021). ASP.NET Core Dependency Injection: What is the IServiceCollection?
  https://www.stevejgordon.co.uk/aspnet-core-dependency-injection-what-is-the-iservicecollection


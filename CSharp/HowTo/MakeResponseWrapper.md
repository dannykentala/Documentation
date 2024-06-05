## How to make a response wrapper

### Base response
```cs
public class Response<T>
{
  public Response()
  { }

  public Response(T data, string message)
  {
    Succeeded = true;
    Message = message;
    Data = data;
  }
  public T Data { get; set; }
  public bool Succeeded { get; set; }
  public string Message { get; set; }
}
```

### Paging response
```cs
public class PageResponse<T>: Response<T>
{
  public int CurrentPage {get; set;}
  public int NextPage {get; set;}
  public int PageSize {get; set;}

  public PageResponse(T data, int currentPage, int nextPage, int pageSize, string message)
  : base(data, message)
  {
    CurrentPage = currentPage;
    NextPage = nextPage;
    PageSize = pageSize;
  }
}
```

### Implementation
```cs
public PageResponse<IEnumerable<Doctor>> GetAll(int pageNumber)
{
  int pageSize = 2;
  var data = _context.Doctors.Include(d => d.Specialty)
    .Skip((pageNumber -1) * pageSize)
    .Take(pageSize)
    .ToList();

  return new PageResponse<IEnumerable<Doctor>>(data, pageNumber, pageNumber +1, pageSize, "");
}
```

#### Result
```json
{
  "currentPage": 1,
  "nextPage": 2,
  "pageSize": 2,
  "data": [
    {
      "id": 1,
      "fullName": "Dr. John Smith",
      "email": "john.smith@example.com",
      "phone": "+1234567890",
      "status": "active",
      "idSpecialty": 1,
      "specialty": {
        "id": 1,
        "name": "Cardiology",
        "description": "Specializing in heart health and cardiovascular diseases.",
        "status": "active"
      }
    },
    {
      "id": 2,
      "fullName": "Dr. Emily Johnson",
      "email": "emily.johnson@example.com",
      "phone": "+1987654321",
      "status": "active",
      "idSpecialty": 2,
      "specialty": {
        "id": 2,
        "name": "Dermatology",
        "description": "Treating conditions related to the skin, hair, and nails.",
        "status": "active"
      }
    }
  ],
  "succeded": true,
  "message": ""
}
```

## References
Codewithmukesh. (2020). How to Implement Pagination in ASP.NET Core WebAPI? - Ultimate Guide
  https://codewithmukesh.com/blog/pagination-in-aspnet-core-webapi/
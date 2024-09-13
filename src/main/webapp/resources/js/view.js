function bookView(id){
    console.log(id); // 19
    // GET : http://localhost:8081/s02/api/book/{id}
    fetch("http://localhost:8081/s02/api/book/"+id)
    .then(response=> response.json())
    .then(book=>{
       let html="";
       html+="<table class='table table-bordered'>";
       html+="<tr>";
       html+="<td>번호</td>";
       html+=`<td>${book.id}</td>`;
       html+="</tr>";
       html+="<tr>";
       html+="<td>제목</td>";
       html+=`<td>${book.title}</td>`;
       html+="</tr>";
       html+="<tr>";
       html+="<td>가격</td>";
       html+=`<td>${book.price}</td>`;
       html+="</tr>";
       html+="<tr>";
       html+="<td>저자</td>";
       html+=`<td>${book.author}</td>`;
       html+="</tr>";
       html+="<tr>";
       html+="<td>페이지</td>";
       html+=`<td>${book.page}</td>`;
       html+="</tr>";
       html+="</table>";
       document.getElementById("bookView").innerHTML=html;
     })
    .catch(error=>{
       console.log(error);
    });
}
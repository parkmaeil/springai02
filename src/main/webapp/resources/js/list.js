function bookListFn(){
    //console.log("bookListFn()");
    // Rest API 통신(Ajax)
    // GET : http://localhost:8081/s02/api/book
    // $.ajax()
    fetch("http://localhost:8081/s02/api/book")
    .then(response=> response.json())
    .then(books=>{
       // 동적으로 뷰를 만들어서 출력....
       let html="";
       books.forEach(book=>{
           html+="<tr>";
           html+=`<td>${book.id}</td>`;
           html+=`<td>${book.title}</td>`;
           html+=`<td>${book.price}</td>`;
           html+=`<td>${book.author}</td>`;
           html+=`<td>${book.page}</td>`;
           html+="<td><button class='btn btn-sm btn-warning' onclick='goDelete("+book.id+")'>삭제</button></td>";
           html+="</tr>";
       });
       document.getElementById("blist").innerHTML=html;
      })
    .catch(error=>{
        console.log(error);
    });
}

function goDelete(id){
    console.log(id);
    // DELETE : http://localhost:8081/s02/api/book/{id}
     
}
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
           html+=`<td><a href="/s02/view/${book.id}">${book.title}</a></td>`;
           html+=`<td>${book.price}</td>`;
           html+=`<td>${book.author}</td>`;
           html+=`<td>${book.page}</td>`;
           html+=`<td><button class='btn btn-sm btn-warning' onclick='goDelete("${book.id}")'>삭제</button></td>`;
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
    let deleteURL="http://localhost:8081/s02/api/book/"+id;
    fetch(deleteURL,{
        method : "DELETE"
    })
    .then(response=>{
         if(!response.ok){  // ok=true, false
            throw new Error("Network response was not ok");
         }
         // 다시 리스트 페이지로~~
         location.href="/s02/list";
      })
    .catch(error=>{
        console.log(error);
     });
}

 function toggle() {
         var reviewForm = document.getElementById("book_register");
     if (reviewForm.style.display === "none" || reviewForm.style.display === "") {
             reviewForm.style.display = "block";
        } else {
                reviewForm.style.display = "none";
     }
 }

 function register(){
    // title, price, author, page -> JSON
    let title=document.getElementById("title").value;
    let price=document.getElementById("price").value;
    let author=document.getElementById("author").value;
    let page=document.getElementById("page").value;
    // Object
    let formData={
          title : title,
          price : price,
          author : author,
          page : page
    }; // Dic
    console.log(formData);// Object -> JSON(String)
    // POST : http://localost:8081/s02/api/book
    fetch("http://localhost:8081/s02/api/book",{
         method : "POST",
         headers : {
            "Content-Type" : "application/json"
         },
         body : JSON.stringify(formData)
    })
    .then(response=>{
        if(!response.ok){
          throw new Error("Network response was not ok");
        }
        location.href="/s02/list";
      })
    .catch(error=>{
        console.log(error);
     });
 }
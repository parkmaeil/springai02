function bookUpdateFn(id){

    fetch("http://localhost:8081/s02/api/book/"+id)
    .then(response=>response.json())
    .then(book=>{
        // 수정폼을 동적으로 만들기
        let html="";
        html+="<form>";
        html+="<table class='table table-bordered'>";

        html+="<tr>";
        html+="<td>번호</td>";
        html+=`<td>${book.id}</td>`;
        html+="</tr>";

        html+="<tr>";
        html+="<td>제목</td>";
        html+=`<td><input type='text' id='title' class='form-control' value='${book.title}'/></td>`;
        html+="</tr>";

        html+="<tr>";
        html+="<td>가격</td>";
        html+=`<td><input type='number' id='price' class='form-control' value='${book.price}'/></td>`;
        html+="</tr>";

        html+="<tr>";
        html+="<td>저자</td>";
        html+=`<td><input type='text' id='author' class='form-control' value='${book.author}'/></td>`;
        html+="</tr>";

         html+="<tr>";
         html+="<td>페이지</td>";
         html+=`<td><input type='text' id='page' class='form-control' value='${book.page}'/></td>`;
         html+="</tr>";

        html+="</table>";
        // 수정, 취소 버튼
        html+="<div class='mx-4'>";
        html+=`<button type='button' class='btn btn-sm btn-primary' onclick='goUpdate(${book.id})'>수정</button>`;
        html+="<button type='reset' class='btn btn-sm btn-primary'>취소</button>";
        html+="<button type='button' class='btn btn-sm btn-primary' onclick='goList()'>목록</button>";
        html+="</div>";
        html+="</form>";

        document.getElementById("update").innerHTML=html;
    })
    .catch(error=>{
       console.log("error", error);
    });
}

function goList(){
   location.href="/s02/list";
}

function goUpdate(id){
  console.log(id); // 번호
  // PUT :  수정 Rest API : 수정번호 + 수정데이터(JSON)
  let title=document.getElementById("title").value;
  let price=parseInt(document.getElementById("price").value); // "price" : 30000
  let author=document.getElementById("author").value;
  let page=parseInt(document.getElementById("page").value);
  let formData={
        title : title,
        price : price,
        author : author,
        page : page
  };

  fetch("http://localhost:8081/s02/api/book/"+id, {
    method : "PUT",
    headers : {
       "Content-Type" : "application/json"
    },
    body : JSON.stringify(formData)
  })
  .then(response=>{
     if(!response.ok){
        throw new Error("Network response was not ok");
     }
     location.href="/s02/view/"+id; // 상세보기
   })
  .catch(error=>{
     console.log("error", error);
   });
}
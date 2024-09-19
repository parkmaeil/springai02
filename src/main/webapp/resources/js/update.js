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

        html+="</table>";
        html+="</form>";

        document.getElementById("update").innerHTML=html;
    })
    .catch(error=>{
       console.log("error", error);
    });
}
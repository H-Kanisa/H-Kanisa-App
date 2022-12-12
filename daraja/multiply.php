<script>
    function calc() 
{
  var price = document.getElementById("book_price").innerHTML;
  var noTickets = document.getElementById("num").value;
  var total = parseFloat(price) * noTickets
  if (!isNaN(total))
    document.getElementById("total").innerHTML = total
}
</script>


<form action="" method="post" >
  <p>Number of books :<input id="num" min="1" type="number" oninput="calc()" required/> </p>
  <p>Price Per ticket : Ksh <span id="book_price">1000</span></p>
  <p>Book Value : Ksh 1000</p>
  <p>Subtotal : <b>Ksh <span id="total">0</span></b></p>

 
  <input type='submit' value='Save'>
</form>
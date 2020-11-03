$(document).ready -> 
  letters = /^[A-Za-z]+$/
  numbers = /^[0-9]+$/
  phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/
  decimal=  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/
  mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/

  $('#fname').keyup ->
    $("#fn").remove()
    f_name = $('#fname').val()
    x = f_name.match(letters)
    if f_name.length < 1
      $('#fname').after('<span id="fn" class="error">First Name is required</span>')
    else if not x
      $('#fname').after('<span id="fn" class="error">alphabets only</span>')
    else if f_name.length <= 3
      $('#fname').after('<span id="fn" class="error">least 4 characters required</span>')
    else if f_name.length > 10
      $('#fname').after('<span id="fn" class="error">maximum 10 characters only</span>')

  $('#lname').keyup ->
    $("#ln").remove()
    l_name = $('#lname').val()
    if l_name.length < 1
      $('#lname').after('<span id="ln" class="error">Last Name is required</span>')
    else if not l_name.match(letters)       
      $('#lname').after('<span id="ln" class="error">alphabets only</span>')
    else if l_name.length <= 3
      $('#lname').after('<span id="ln" class="error">least 4 characters required</span>')
    else if l_name.length > 15
      $('#lname').after('<span id="ln" class="error">maximum 15 characters only</span>')

  $('#uname').keyup ->
    $("#un").remove()
    u_name = $('#uname').val()
    if u_name.length < 1
      $('#uname').after('<span id="un" class="error">User Name is required</span>')
    else if u_name.length <= 3
      $('#uname').after('<span id="un" class="error">least 4 characters required</span>')
    else if u_name.length > 10
      $('#uname').after('<span id="un" class="error">maximum 10 characters only</span>')


  $('#email').keyup ->
    e_mail = $('#email').val()
    atpos = e_mail.indexOf("@");
    dotpos = e_mail.lastIndexOf(".");
    $('#em').remove()
    if e_mail.length < 3
      $('#email').after('<span id="em" class="error">Email is required</span>')
    else if atpos<1 or dotpos<atpos+2 or dotpos+2>=e_mail.length
        $('#email').after('<span id="em" class="error">Invalid email</span>')

  $('#pass').keyup ->
    $('#ps').remove()
    p_pass = $('#pass').val()
    c_pass = $('#cpass').val()
    if p_pass.length < 1
      $('#pass').after('<span id="ps" class="error">Password is required</span>') 
    else if p_pass.length < 8
      $('#pass').after('<span id="ps" class="error">Password must be at least 8 characters long</span>')
    else if not decimal.test(p_pass)
      $('#pass').after('<span id="ps" class="error">Use specal, digit, Upper case characters</span>')

  $('#pass').change ->
    $('#cp').remove()
    p_pass = $('#pass').val()
    c_pass = $('#cpass').val()
    if c_pass.length < 1
      $('#cpass').after('<span id="cp" class="error">Confirm Password is required</span>') 
    else if  p_pass isnt c_pass
      $('#cpass').after('<span id="cp" class="error">Password not mached</span>')

  $('#cpass').keyup ->
    $('#cp').remove()
    p_pass = $('#pass').val()
    c_pass = $('#cpass').val()
    if c_pass.length < 1
      $('#cpass').after('<span id="cp" class="error">Confirm Password is required</span>') 
    else if  p_pass isnt c_pass
      $('#cpass').after('<span id="cp" class="error">Password not mached</span>')

  $('#phone').keyup ->
    $('#mb').remove()
    mobile = $('#phone').val()
    if mobile.length < 1 
      $('#phone').after('<span id="mb" class="error">Mobile number is required</span>')
    else if not mobile.match(phoneno)
      $('#phone').after('<span id="mb" class="error">Invalid Phone no</span>')

  $('#address').keyup ->
    $('#add').remove()
    addre = $('#address').val()
    if addre.length < 1
      $('#address').after('<span id="add" class="error">Address is required</span>')
    else if addre.length < 8
      $('#address').after('<span id="add" class="error">least 8 characters required</span>')

  $('#dob').change ->
    $('#db').remove()
    dob = $('#dob').val()
    if dob.length < 1
      $('#dob').after('<span id="db" class="error">Date of Birth is required</span>')

$(document).ready -> 
 

  $('#submit').click ->

    $('#add').remove()
    $('#mb').remove()
    $('#cp').remove()
    $('#em').remove()
    $('#ps').remove()
    $('#un').remove()
    $('#fn').remove()
    $('#ln').remove()
    $('#db').remove()
    f_name = $('#fname').val()
    l_name = $('#lname').val()
    u_name = $('#uname').val()
    e_mail = $('#email').val()
    p_pass = $('#pass').val()
    c_pass = $('#cpass').val()
    mobile = $('#phone').val()
    dob = $('#dob').val()
    addre = $('#address').val()

    if addre.length < 1
      $('#address').after('<span id="add" class="error">Address is required</span>')

    if f_name.length < 1
      $('#fname').after('<span id="fn" class="error">First Name is required</span>')

    if u_name.length < 1
      $('#uname').after('<span id="un" class="error">User Name is required</span>')

    if l_name.length < 1
      $('#lname').after('<span id="ln" class="error">Last Name is required</span>')

    if e_mail.length < 1
      $('#email').after('<span id="em" class="error">Email is required</span>') 

    if p_pass.length < 1
      $('#pass').after('<span id="ps" class="error">Password is required</span>') 

    if c_pass.length < 1
      $('#cpass').after('<span id="cp" class="error">Confirm Password is required</span>')
    else if  p_pass isnt c_pass
      $('#cpass').after('<span id="cp" class="error">Password not mached</span>')

    if mobile.length < 1 
      $('#phone').after('<span id="mb" class="error">Mobile number is required</span>')

    if dob.length < 1
      $('#dob').after('<span id="db" class="error">Date of Birth is required</span>')

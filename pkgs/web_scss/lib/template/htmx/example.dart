String clickToEdit() => """
<script src="/js/htmx@2.0.0.min.js"></script>
<div hx-target="this" hx-swap="outerHTML">
    <div><label>First Name</label>: Joe</div>
    <div><label>Last Name</label>: Blow</div>
    <div><label>Email Address</label>: joe@blow.com</div>
    <button hx-get="/htmx/example/contact/1/edit" class="btn primary">
    Click To Edit
    </button>
</div>
""";

String clickToEdit1() => """
<form hx-put="/htmx/example/contact/1" hx-target="this" hx-swap="outerHTML">
  <div>
    <label for="firstName">First Name</label>
    <input autofocus type="text" id="firstName" name="firstName" value="Joe">
  </div>
  <div class="form-group">
    <label for="lastName">Last Name</label>
    <input type="text" id="lastName" name="lastName" value="Blow">
  </div>
</form>
""";
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
</head>
<body>
    <div class="card">
    <h2>Register</h2>
    <p class="muted">Create an account</p>

    <form method="post" action="">
        <label for="name">Full name</label>
        <input id="name" name="name" type="text" required>

        <label for="email">Email</label>
        <input id="email" name="email" type="email" required>

        <label for="password">Password</label>
        <input id="password" name="password" type="password" required>

        <label for="confirm">Confirm password</label>
        <input id="confirm" name="confirm" type="password" required>

        <button type="submit">Register</button>
        <p class="note">By registering you agree to the project's terms.</p>
    </form>
</div>

</body>
</html
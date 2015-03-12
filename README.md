# Forms

## Introduction

```shell
# Welcome to User Poll
```
Dynamic forms made easy.

This API is in <sup>Beta</sup> phase. We would like you to give it a try. Please [Sign Up](#) here to get an API Key.

```html
<form accept-charset="UTF-8" action="https://fom.io/s/e27204f7" method="POST">
  <input type="hidden" name="utf8" value="β">
  <input type="hidden" name="redirect" value="http://google.com">
  <input type="text" name="first_name" placeholder="Your Name">
  <input type="email" name="email" placeholder="Your Email">
  <textarea type="textarea" name="description" pleaceholder="Some Description">
  <input type="submit" name="submit">
</form>
```

### Get Submissions

http://localhost:3000/api/v1/form/c5fd3704/submissions

#### If more than 20 (pagination)
http://localhost:3000/api/v1/form/c5fd3704/submissions?page=2

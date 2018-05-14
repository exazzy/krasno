<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Грузоперевозки</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a class="navbar-right" href="${g.createLink(controller: 'user', action: 'login')}">Войти</a></li>
                <li><a class="navbar-right" href="${g.createLink(controller: 'user', action: 'signup')}">Зарегистрироваться</a></li>
            <ul>
        </div>
    </div>
</nav>
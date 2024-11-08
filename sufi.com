<!DOCTYPE html>
<!-- saved from url=(0043)http://127.0.0.1:5500/index.html/index.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Web Developer Portfolio">
    <title>Web Developer Portfolio</title>
    <style>
        Global Styles
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        header {
            background-color: #000000;
            color: rgb(255, 253, 253);
            padding: 40px 0;
            text-align: center;
        }

        header h1 {
            font-size: 3rem;
        }

        header p {
            font-size: 1.2rem;
            margin-top: 10px;
        }

        nav {
            background: #050505;
            padding: 15px 0;
            position: sticky;
            top: 0;
            z-index: 10;
        }

        nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
        }

        nav ul li {
            margin-right: 30px;
        }

        nav ul li a {
            color: rgb(0, 0, 0);
            font-size: 1.2rem;
            padding: 10px;
            display: block;
        }

        nav ul li a:hover {
            background: #1abc9c;
            border-radius: 5px;
        }

        /* Hero Section */
        #hero {
            background: url('https://via.placeholder.com/1200x600?text=Web+Developer') no-repeat center center/cover;
            height: 60vh;
            color: rgb(0, 0, 0);
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        #hero h2 {
            font-size: 3.5rem;
            margin-bottom: 20px;
        }

        #hero p {
            font-size: 1.5rem;
            margin-bottom: 30px;
        }

        .btn {
            background-color: #1abc9c;
            padding: 12px 25px;
            color: rgb(255, 254, 254);
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #16a085;
        }

        /* About Section */
        #about {
            padding: 50px 20px;
            background-color: #ffffff;
            text-align: center;
        }

        #about h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        #about p {
            font-size: 1.2rem;
            margin-bottom: 20px;
            color: #7f8c8d;
        }

        /* Skills Section */
        #skills {
            padding: 60px 20px;
        }

        #skills h2 {
            font-size: 2.5rem;
            text-align: center;
            margin-bottom: 30px;
        }

        .skills-list {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .skill-item {
            background: #fff;
            padding: 30px;
            margin: 10px;
            width: 25%;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .skill-item h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .skill-item p {
            color: #7f8c8d;
        }

        /* Projects Section */
        #projects {
            padding: 60px 20px;
            background-color: #ecf0f1;
        }

        #projects h2 {
            font-size: 2.5rem;
            text-align: center;
            margin-bottom: 30px;
        }

        .project-list {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .project-item {
            background: #fff;
            padding: 20px;
            margin: 10px;
            width: 30%;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .project-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 5px;
        }

        .project-item h3 {
            margin-top: 15px;
            font-size: 1.5rem;
        }

        .project-item p {
            color: #7f8c8d;
            margin-top: 10px;
        }

        .project-item .btn {
            background-color: #1abc9c;
            padding: 12px 25px;
            color: white;
            border-radius: 5px;
            font-size: 1.1rem;
            cursor: pointer;
            margin-top: 15px;
        }

        /* Contact Section */
        #contact {
            padding: 60px 20px;
            text-align: center;
        }

        #contact h2 {
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        #contact form input,
        #contact form textarea {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        #contact form button {
            background-color: #1abc9c;
            padding: 12px 25px;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.2rem;
            cursor: pointer;
            margin-top: 10px;
        }

        /* Footer Section */
        footer {
            background: #34495e;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        footer p {
            font-size: 1rem;
        }

    </style>
</head>
<body>

    <!-- Header Section -->
    <header>
        <h1>Sufiyan Faheem</h1>
        <p>Web Developer | Front-End Specialist</p>
    </header>

    <!-- Navigation Bar -->
    <nav>
        <ul>
            <li><a href="http://127.0.0.1:5500/index.html/index.html#hero">Home</a></li>
            <li><a href="http://127.0.0.1:5500/index.html/index.html#about">About</a></li>
            <li><a href="http://127.0.0.1:5500/index.html/index.html#skills">Skills</a></li>
            <li><a href="http://127.0.0.1:5500/index.html/index.html#projects">Projects</a></li>
            <li><a href="http://127.0.0.1:5500/index.html/index.html#contact">Contact</a></li>
        </ul>
    </nav>

    <!-- Hero Section -->
    <section id="hero">
        <h2>Welcome to My Portfolio</h2>
        <p>I'm a passionate web developer focused on creating user-friendly and responsive websites.</p>
        <button class="btn" onclick="scrollToContact()">Contact Me</button>
    </section>

    <!-- About Section -->
    <section id="about">
        <h2>About Me</h2>
        <p>Hello! I'm Sufiyan Faheem, a web developer based in [Location]. I specialize in front-end development with a focus on HTML, CSS, JavaScript, and React. My goal is to create beautiful and functional websites that are both user-friendly and performant.</p>
    </section>

    <!-- Skills Section -->
    <section id="skills">
        <h2>Skills</h2>
        <div class="skills-list">
            <div class="skill-item">
                <h3>HTML5</h3>
                <p>Building structured web pages with semantic HTML5 elements.</p>
            </div>
            <div class="skill-item">
                <h3>CSS3</h3>
                <p>Creating responsive, accessible, and visually appealing web designs using CSS3.</p>
            </div>
            <div class="skill-item">
                <h3>JavaScript</h3>
                <p>Developing dynamic and interactive websites with JavaScript.</p>
            </div>
            <div class="skill-item">
                <h3>React</h3>
                <p>Building fast and scalable web applications with React.js.</p>
            </div>
        </div>
   
        <section id="contact">
            <h2>Contact Me</h2>
            <p>Email: <a href="mailto:sufiyanfaheem281@example.com">sufiyanfaheem281@example.com</a></p>
            <p>whatsapp: <a href="https://www.whatsapp.com/in/03331417145" target="_blank">sufiyanfaheem whatsapp</a></p>
            <p>instagram: <a href="https://instagram.com/sufiyanfaheem" target="_blank">Sufiyan faheem
            </a></p><p><a href="https://instagram.com/sufiyanfaheem" target="_blank">facebook:</a><a href="http://facebook.com/">sufiyan faheem</a></p>
             <p>contact:<a href="http://call%20us.com/">03331417145</a></p>
<!-- Code injected by live-server -->
<script>
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
</script>


    </section></section></body></html>
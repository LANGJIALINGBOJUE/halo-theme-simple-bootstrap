
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>捐赠页面示例</title>
    <style>
        #donate-section {
            position: fixed;
            left: 10px;
            top: 80%; /* 向下移动按钮 */
            transform: translateY(-50%);
        }

        #donate-button {
            background-color: #007bffba;
            color: white;
            border: none;
            padding: 7px; /* 调小按钮 */
            font-size: 12px; /* 调小按钮文字大小 */
            cursor: pointer;
            border-radius: 5px;
            position: relative;
            transition: opacity 0.5s ease-in-out;
        }

        #donate-popup {
            opacity: 0;
            pointer-events: none;
            transition: opacity 0.5s ease-in-out;
            position: absolute;
            left: 110%;
            top: 50%;
            transform: translateY(-50%);
            padding: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            background-color: white;
            border-radius: 10px;
            text-align: center;
            z-index: 1000;
            display: flex; /* 横向排列 */
            gap: 10px; /* 图片间距 */
        }

        #donate-popup img {
            max-width: 100px;
            height: auto;
        }

        #donate-popup #close-button {
            position: absolute;
            top: 5px;
            right: 5px;
            cursor: pointer;
            font-size: 12px;
        }
    </style>
</head>
<body>

<#if settings.qrcode_enabled_1?has_content || settings.qrcode_enabled_2?has_content>
    <div id="donate-section">
        <button id="donate-button">捐赠</button>
        <div id="donate-popup">
            <span id="close-button">&times;</span>
            <#if settings.qrcode_enabled_1?has_content>
                <img src="${settings.qrcode_enabled_1}" alt="捐赠二维码1">
            </#if>
            <#if settings.qrcode_enabled_2?has_content>
                <img src="${settings.qrcode_enabled_2}" alt="捐赠二维码2">
            </#if>
        </div>
    </div>
</#if>

<script>
    const donateButton = document.getElementById('donate-button');
    const donatePopup = document.getElementById('donate-popup');
    const closeButton = document.getElementById('close-button');
    let timeoutId;

    donateButton.addEventListener('mouseover', function() {
        clearTimeout(timeoutId);
        donatePopup.style.opacity = '1';
        donatePopup.style.pointerEvents = 'auto';
    });

    donateButton.addEventListener('mouseout', function() {
        timeoutId = setTimeout(function() {
            donatePopup.style.opacity = '0';
            donatePopup.style.pointerEvents = 'none';
        }, 500);
    });

    donatePopup.addEventListener('mouseover', function() {
        clearTimeout(timeoutId);
        donatePopup.style.opacity = '1';
        donatePopup.style.pointerEvents = 'auto';
    });

    donatePopup.addEventListener('mouseout', function() {
        timeoutId = setTimeout(function() {
            donatePopup.style.opacity = '0';
            donatePopup.style.pointerEvents = 'none';
        }, 500);
    });

    closeButton.addEventListener('click', function() {
        donateButton.style.opacity = '0';
        donateButton.style.pointerEvents = 'none';
        donatePopup.style.opacity = '0';
        donatePopup.style.pointerEvents = 'none';
    });
</script>

</body>
</html>

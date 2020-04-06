function error_handler(e) {
    if (e.errors) {
        var message = "Errors:\n";
        $.each(e.errors, function (key, value) {
            if ('errors' in value) {
                $.each(value.errors, function () {
                    message += this + "\n";
                });
            }
        });
        alert(message);
    }
}

function createCookie(name, value, days) {
    var expires;

    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toGMTString();
    } else {
        expires = "";
    }
    document.cookie = encodeURIComponent(name) + "=" + encodeURIComponent(value) + expires + "; path=/";
}

function readCookie(name) {
    var nameEQ = encodeURIComponent(name) + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) === ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) === 0) return decodeURIComponent(c.substring(nameEQ.length, c.length));
    }
    return null;
}

function eraseCookie(name) {
    createCookie(name, "", -1);
}

function changeNewLine(text) {
    var regexp = new RegExp('\n', 'g');
    return text.replace(regexp, '<br>');
}

function getTheSubstring(value, length) {
    if (value.length > length)
        return kendo.toString(value.substring(0, length)) + "...";
    else return kendo.toString(value);
}

/* function GetUserEnvironment() {
    var height = $(window).height();
    var width = $(window).width();

    $.ajax({
        url: "/Ajax/GetUserEnvironment",
        type: "POST",
        data: { width: width, height: height },
        success: function (data, status, headers) {
            var href = window.location.href.toLowerCase();
            if (href.indexOf("intranet") >= 0)
                $("#UserFullName").text(data.FullName);
        }
    });
} */

function formatNumber(pnumber, decimals) {
    var result = pnumber.toString().replace(/[^0-9\.]/g, '');
    if (typeof decimals === "undefined") decimals = 2;

    if (result.length > 0)
        result = parseFloat(result, 20).toFixed(decimals).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString();

    return result;
}

function formatCurrency(num, decimals) {
    var result = num.toString().replace(/[^0-9\.\-]/g, '');
    if (typeof decimals === "undefined") decimals = 2;

    if (result.length > 0) {
        if (result < 0)
            result = '-$' + parseFloat(result * -1, 20).toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString();
        else
            result = '$' + parseFloat(result, 20).toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString();
    }
    if (decimals === 0)
        result = result.split('.')[0];

    return result;
}

function formatPercent(pnumber, decimals) {
    var result = pnumber.toString().replace(/[^0-9\.]/g, '');
    if (typeof decimals === "undefined") decimals = 3;

    if (result.length > 0)
        result = parseFloat(result, 20).toFixed(decimals).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString() + "%";

    return result;
}

function formatPhone(pnumber) {
    var result = pnumber.toString().replace(/[^0-9\.]/g, '');

    if (result.length > 3 && result.charAt(3) !== '-') {
        result = result.substr(0, 3) + '-' + result.substr(3, result.length);
    }
    if (result.length > 7 && result.charAt(7) !== '-') {
        result = result.substr(0, 7) + '-' + result.substr(7, 4);
    }
    if (result.length > 12) {
        result = result.substr(0, 12);
    }

    return result;
}

function formatSSN(pnumber) {
    var result = pnumber.toString().replace(/[^0-9]/g, '');

    if (result.length > 3 && result.charAt(3) !== '-') {
        result = result.substr(0, 3) + '-' + result.substr(3, result.length);
    }
    if (result.length > 6 && result.charAt(6) !== '-') {
        result = result.substr(0, 6) + '-' + result.substr(6, 4);
    }
    if (result.length > 11) {
        result = result.substr(0, 11);
    }

    return result;
}

var emailReg = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
var domainReg = /^((?:(?:(?:\w[\.\-\+]?)*)\w)+)((?:(?:(?:\w[\.\-\+]?){0,62})\w)+)\.(\w{2,6})$/;

function validateEmail(email) {
    if (email.length > 0 && !emailReg.test(email)) return false;
    return true;
}

function validateMultiEmail(strEmails) {
    var emails = strEmails.split(/[;,]+/);
    for (var i = 0; i < emails.length; i++) {
        value = emails[i];
        if ($.trim(value).length > 0 && !emailReg.test($.trim(value))) return false;
    }
    return true;
}

function validateDomain(domain) {
    if (domain.length > 0 && !domainReg.test(domain)) return false;
    return true;
}

var use_debug = false;

function debug() {
    if (use_debug && window.console && window.console.log) console.log(arguments);
}

function checkKendoDropDownList(dropDownID) {
    if (!$(dropDownID).length) return true;
    var dropDown = $(dropDownID).data("kendoDropDownList");
    if (dropDown.value() === "" || dropDown.text() === "") {
        $(dropDownID).parent().addClass("has-error");
        errorField += $("label[for='" + dropDownID.replace("#", "") + "']").html() + "<br />";
        return false;
    }
    else {
        $(dropDownID).parent().removeClass("has-error");
        return true;
    }
}

function checkKendoMultiSelect(multiSelectID) {
    if (!$(multiSelectID).length) return true;
    var multiSelect = $(multiSelectID).data("kendoMultiSelect");
    if ($.trim(multiSelect.value()) === "") {
        $(multiSelectID).parent().parent().addClass("has-error");
        errorField += $("label[for='" + multiSelectID.replace("#", "") + "']").html() + "<br />";
        return false;
    }
    else {
        $(multiSelectID).parent().removeClass("has-error");
        return true;
    }
}

function fieldformat_initialize() {
    $(".form-horizontal").find(".text-phone").each(function () {
        this.value = formatPhone(this.value);
    });

    $(".form-horizontal").find(".text-SSN").each(function () {
        this.value = formatSSN(this.value);
    });

    $(".form-horizontal").find(".text-decimal").each(function () {
        this.value = formatNumber(this.value, 2);
    });

    $(".form-horizontal").find(".text-decimal3").each(function () {
        this.value = formatNumber(this.value, 3);
    });

    $(".form-horizontal").find(".text-currency").each(function () {
        this.value = formatCurrency(this.value);
    });

    $(".form-horizontal").find(".text-percent").each(function () {
        this.value = formatPercent(this.value);
    });

    $(".form-horizontal").find(".text-percent0").each(function () {
        this.value = formatPercent(this.value, 0);
    });

    $(".form-horizontal").find(".text-percent1").each(function () {
        this.value = formatPercent(this.value, 1);
    });

    $(".form-horizontal").find(".text-percent2").each(function () {
        this.value = formatPercent(this.value, 2);
    });

    $(".form-horizontal").find(".numericonly").each(function () {
        var check = this.value.replace(/[^0-9\-\.]/g, '');
        if (check < 0.0000001 && check > -0.0000001)
            this.value = '';
    });

    $(".form-horizontal").find('input[title="datepicker"]').each(function () {
        if ($(this).val() === "1/1/0001") {
            $(this).val("");
        }
    });
}

function displayErrorFields(erorMessage) {
    $('#myModal .modal-body, #myModal .modal-footer').show();
    $("#myModal .modal-dialog .maximize, #myModal #detailsDiv").hide();
    $(".modal-dialog").removeClass("viewDetails");
    if ($("#myModal .modal-title").text() === "")
        $("#myModal .modal-title").html("Error");
    if (typeof erorMessage === "undefined") {
        $("#modal-message").html("The required field should not be left blank. Please check that shown in red and try again.<br /><br />" + errorField);
        $('.modal-body .fa-exclamation-circle').removeClass('text-info').addClass('text-red');
    } else {
        $("#modal-message").html(erorMessage);
    }
    $('#btnOpenModal').trigger('click');
    VanishLoadingSpinner();
}

function SetModalDimension(enableMaxHeight, showFooter, maxWidth, height, width) {
    var nWidth = $(window).width() - (maxWidth ? 0 : 500);
    var nHeight = $(window).height() - (showFooter ? 150 : 220);
    nHeight = height > 0 ? height : nHeight;

    if (typeof width !== "undefined") nWidth = width;
    if (!enableMaxHeight && nHeight > 690) nHeight = 690;
    $('#myModal #detailsDiv').html("").removeClass("modal-body").css({ "height": nHeight + "px" });
    $("#myModal .modal-dialog").addClass("viewDetails").css({ "width": nWidth + "px" });

    return nHeight;
}

function ShowModalPopup(title, docUrl, showFooter, showMaximizer, maxWidth, height, width, adjustFramHeight) {
    var nHeight = SetModalDimension(false, showFooter, maxWidth, height, width);
    var iFrameHeight = (typeof adjustFramHeight === "undefined" ? nHeight - 27 : nHeight);
    var src = "<iframe scrolling='auto' width='100%' height='" + iFrameHeight + "px' frameborder='0' src='" + docUrl + "' />";
    $("#myModal .modal-title").html(title);
    $('#myModal .modal-body').hide();
    $('#myModal #detailsDiv').show().html(src);
    $('#myModal #detailsDiv section').removeClass("bg-gradation");
    if (!showFooter) $("#myModal .modal-footer").hide();
    if (showMaximizer)
        $("#myModal .modal-dialog .maximize").attr("href", docUrl).attr("target", "_blank").show();
    else
        $("#myModal .modal-dialog .maximize").hide();
    $('#btnOpenModal').trigger('click');
}

function ViewDocument(elemnt, dataType, seqID, fileIndexID, docName, isNewWindow) {
    $.ajax({
        url: "/Ajax/GetDocumentFileName",
        type: "POST",
        dataType: "json",
        data: { dataType: dataType, seqID: seqID, fileIndexID: fileIndexID },
        beforeSend: function () {
            DisplayLoadingSpinner();
        },
        success: function (data, status, headers) {
            var isSuccess = (data.isSuccess === true);
            if (isSuccess) {
                if (isNewWindow || data.isNewWindow) {
                    ShowPopupWindow(elemnt, data.FileName, true, data.isNewWindow);
                } else {
                    ShowModalPopup(docName, data.FileName, false, true, false);
                }
            }
        },
        complete: function () {
            VanishLoadingSpinner();
        }
    });
}

function ShowPopupWindow(elemnt, showIt, isDuplicate, openNewTab, fullWindow) {
    var nWidth = $(window).width() - 200;
    var nHeight = SetModalDimension(true, false, 0);
    var popupName = "PopupWindow";
    if (isDuplicate) popupName = "";
    var newWin;
    VanishLoadingSpinner();

    if (openNewTab)
        newWin = window.open(showIt, '_blank');
    else if (fullWindow)
        newWin = window.open(showIt, popupName, "status=no,toolbar=no,menubar=no,scrollbars=yes,location=no", true);
    else
        newWin = window.open(showIt, popupName, "width=" + nWidth + ",height=" + nHeight + ",screenX=100,left=100,screenY=100,top=100,status=no,toolbar=no,menubar=no,scrollbars=yes,location=no", true);

    if (!newWin || newWin.closed || typeof newWin.closed === 'undefined') {
        $(".msg-popupblocked").css({ "width": "700px" });
        $("#btnShowPopupBlockNotice").trigger('click');
    }
    else
        newWin.focus();
}

function ShowEmbeddedDoc(elemnt, fileDataID, guid, format, loannumber, description, docstatus, category, created, isNewWindow) {
    $.ajax({
        url: "/Ajax/GetEmbeddedDocFileName",
        type: "POST",
        dataType: "json",
        data: { fileDataID: fileDataID, guid: guid, format: format },
        beforeSend: function () {
            DisplayLoadingSpinner();
        },
        success: function (data, status, headers) {
            var isSuccess = (data.isSuccess === true);
            if (isSuccess) {
                if (isNewWindow || data.isNewWindow) {
                    ShowPopupWindow(elemnt, data.FileName, true, data.isNewWindow);
                } else {
                    $(".modal-footer-message").html("<div class='col-xs-3'>Status :&nbsp;&nbsp;" + docstatus + "</div><div class='col-xs-3'>Category :&nbsp;&nbsp;" + category + "</div><div class='col-xs-4'>Created :&nbsp;&nbsp;" + created + "</div>");
                    ShowModalPopup(loannumber + " - " + description, data.FileName, true, true, true);
                }
            }
        },
        complete: function () {
            VanishLoadingSpinner();
        }
    });
}

function DisplayEmbeddedDoc(elemnt, fileDataID, guid, format, loannumber, description, docstatus, category, created, isNewWindow) {
    if (format === "pdf") {
        var docUrl = "/EmbeddedDoc/DisplayEmbeddedDoc/" + fileDataID + "/" + guid;
        $(".modal-footer-message").html("<div class='col-xs-3'>Status :&nbsp;&nbsp;" + docstatus + "</div><div class='col-xs-3'>Category :&nbsp;&nbsp;" + category + "</div><div class='col-xs-4'>Created :&nbsp;&nbsp;" + created + "</div>");
        ShowModalPopup(loannumber + " - " + description, docUrl, true, true, true);
    }
    else {
        ShowEmbeddedDoc(elemnt, fileDataID, guid, format, loannumber, description, docstatus, category, created, isNewWindow);
    }
}

function GetFileFromFileServer(element, encryptedFileName, fullWindow, category, popupTitle) {
    var wTitle = typeof popupTitle === "undefined" || popupTitle === "" ? "View Document" : popupTitle;
    $.ajax({
        url: "/Ajax/GetFileFromFileServer",
        type: "POST",
        dataType: "json",
        data: { encryptedFileName: encryptedFileName, category: category },
        beforeSend: function () {
            DisplayLoadingSpinner();
        },
        success: function (data, status, headers) {
            var isSuccess = (data.isSuccess === true);
            if (isSuccess) {
                if (data.isNewWindow || fullWindow) {
                    ShowPopupWindow(element, data.FileName, false, false, true);
                } else {
                    ShowModalPopup(wTitle, data.FileName, false, true);
                }
            }
            else {
                $("#modal-message").html(data.ErrorMessage);
                $('#btnOpenModal').trigger('click');
            }
        },
        complete: function () {
            VanishLoadingSpinner();
        }
    });
}

function GetFileFromFileServerByID(element, id, fullWindow) {
    $.ajax({
        url: "/Ajax/GetFileFromFileServerByID",
        type: "POST",
        dataType: "json",
        data: { id: id },
        beforeSend: function () {
            DisplayLoadingSpinner();
        },
        success: function (data, status, headers) {
            var isSuccess = (data.isSuccess === true);
            if (isSuccess) {
                if (data.isNewWindow || fullWindow) {
                    ShowPopupWindow(element, data.FileName, false, false, true);
                } else {
                    ShowModalPopup("View Document", data.FileName, false, true);
                }
            }
            else {
                $("#modal-message").html("An unexpected error occurred while importing the file. Please try again later.");
                $('#btnOpenModal').trigger('click');
            }
        },
        complete: function () {
            VanishLoadingSpinner();
        }
    });
}

function ReadFileFromFileServer(filePath, popupTitle, showMaximizer) {
    var date = new Date();
    var minutes = 20;
    var wTitle = typeof popupTitle === "undefined" || popupTitle === "" ? "View Document" : popupTitle;
    var fullWindow = typeof showMaximizer === "undefined" ? false : showMaximizer;

    date.setTime(date.getTime() + (minutes * 60 * 1000));
    $.cookie('ReadFileFromFileServer', filePath, { expires: date, path: '/' });
    ShowModalPopup(wTitle, "/Home/ReadFileFromFileServer", false, fullWindow, false, 534, 960);
}

function ReadFileFromFileServerForMobile(filePath) {
    var date = new Date();
    var minutes = 20;

    date.setTime(date.getTime() + (minutes * 60 * 1000));
    $.cookie('ReadFileFromFileServer', filePath, { expires: date, path: '/' });
    window.open("/Home/ReadFileFromFileServer");
}

function DownloadDocument(element, encryptedFileName) {
    $.ajax({
        url: "/Home/DownloadDocument",
        type: "POST",
        dataType: "json",
        data: { encryptedFileName: encryptedFileName },
        beforeSend: function () {
            DisplayLoadingSpinner();
        },
        success: function (data, status, headers) {
            if (data.isSuccess === true) {
                window.location = "/Home/DownloadDocument";
                $(element).siblings(".fa-check-square").show();
            } else {
                $(".modal-title").html("Download Error");
                $("#modal-message").html(data.ErrorMessage);
                $('#btnOpenModal').trigger('click');
            }
        },
        complete: function () {
            VanishLoadingSpinner();
        }
    });
}

function OpenDisclaimerForThirdPartyLinkModal(element, thirdPartyLink) {
    $("#ThirdPartyLink").attr("data-link", thirdPartyLink);
    $('#btnDisclaimerForThirdPartyLinkModal').trigger('click');
}

function CloseParentModal(element) {
    window.top.$('button.close').trigger('click');
}

function ddlDataBound(e) {
    var len = this.dataSource.data().length;
    if (len === 1) {
        this.select(1);
    }
}

function convertCurrencyAndPhone() {
    $(".form-horizontal").find(".text-currency, .text-percent0, .text-percent2, .text-percent").each(function () {
        $(this).val($(this).val().replace(/[^0-9\.\-]/g, ""));
    });
    $(".form-horizontal").find(".text-phone, .text-SSN").each(function () {
        $(this).val($(this).val().replace(/[^0-9\.]/g, ""));
    });
}

$(document).ready(function () {
    /* GetUserEnvironment(); */

/*     $(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });

    $(function () {
        $('[data-toggle="popover"]').popover();
    });
 */
    $(".form-horizontal").find(".text-phone").each(function () {
        $(this).val(formatPhone($(this).val()));
    });

    /* Manually add dashes as users enters a Phone Number */
    $('.text-phone').keyup(function () {
        $(this).val(formatPhone($(this).val()));
    });

    /* Manually add dashes as users enters a SSN */
    $('.text-SSN').keyup(function () {
        $(this).val(formatSSN($(this).val()));
    });

    /* Manually add dashes as users enters a Zip Code */
    $('#PropertyZipCode').keyup(function () {
        if ($(this).val().length > 5 && $(this).val().charAt(5) !== '-') {
            $(this).val($(this).val().substr(0, 5) + '-' + $(this).val().substr(5, $(this).val().length));
        }
    });

    /* Allow numeric only */
    $('.numericonly').focus(function () {
        this.value = this.value.replace(/[^0-9\-\.]/g, '');
        if (this.value < 0.0000001)
            this.value = '';
    });

    $('.numericonly').blur(function () {
        this.value = this.value.replace(/[^0-9\-\.]/g, '');
    });

    /* Manually add dollar sign as users enters a Currency */
    $('.text-currency').blur(function () {
        this.value = formatCurrency(this.value, 2);
    });

    $('.text-decimal').blur(function () {
        this.value = formatNumber(this.value, 2);
    });

    $('.text-decimal3').blur(function () {
        this.value = formatNumber(this.value, 3);
    });

    $('.text-percent').blur(function () {
        this.value = formatPercent(this.value, 3);
    });

    $('.text-percent0').blur(function () {
        this.value = formatPercent(this.value, 0);
    });

    $('.text-percent1').blur(function () {
        this.value = formatPercent(this.value, 1);
    });

    $('.text-percent2').blur(function () {
        this.value = formatPercent(this.value, 2);
    });

    /* Global solution to limit the number of characters a user can enter in a field */
    $(".limitInputLength").keyup(function (event) {
        var maxCharNum = parseInt($(this).attr('data-val-length-max'));
        if ($(this).val().length > maxCharNum) {
            $(this).val($(this).val().substring(0, maxCharNum));
        }
    });

    var href = window.location.href.toLowerCase();
    var starPosition = "left";
    if (href.indexOf("intranet") >= 0 || href.indexOf("www.amwestfu") >= 0)
        starPosition = "right";

    $(".form-horizontal").find(".label-required").each(function () {
        if (starPosition === "left")
            $(this).html("<span class='text-required'>*</span> " + $(this).html());
        else
            $(this).html($(this).html() + " <span class='text-required'>*</span>");
    });

    $(".form-horizontal").find(".label-required-r").each(function () {
        $(this).html($(this).html() + " <span class='text-required'>*</span>");
    });

    $("#myModal .modal-dialog .maximize").on("click", function () {
        $("button[title='Close']").trigger('click');
    });

    $("a.disclaimer-popup").on("click", function () {
        $("#ThirdPartyLink").attr("data-link", $(this).attr("data-link"));
        $('#btnDisclaimerForThirdPartyLinkModal').trigger('click');
    });

    $("a.modal-popup").on("click", function () {
        ShowModalPopup($(this).attr("data-title"), $(this).attr("data-link"), false, true)
    });

    $("body").find("span[onclick], button[onclick], a[onclick], div[onclick]").each(function () {
        $(this).attr("onkeypress", $(this).attr("onclick"));
    });
});

//
//  NetworkContentType.swift
//  Memeful
//
//  Created by techjini on 15/12/19.
//  Copyright © 2019 Raveendra. All rights reserved.
//

import Foundation

public struct NetworkContentType {
    /// Used to denote the encoding necessary for files containing JavaScript source code. The alternative MIME type for this file type is text/javascript.
    static let ApplicationXJavascript = "application/x-javascript" 
    
    /// 24bit Linear PCM audio at 8-48kHz, 1-N channels; Defined in RFC 3190
    static let AudioL24 = "audio/L24" 
    
    /// Adobe Flash files for example with the extension .swf
    static let ApplicationXShockwaveFlash = "application/x-shockwave-flash" 
    
    /// Arbitrary binary data. Generally speaking this type identifies files that are not associated with a specific application. Contrary to past assumptions by software packages such as Apache this is not a type that should be applied to unknown files. In such a case, a server or application should not indicate a content type, as it may be incorrect, but rather, should omit the type in order to allow the recipient to guess the type.
    static let ApplicationOctetStream = "application/octet-stream" 
    
    /// Atom feeds
    static let ApplicationAtomXml = "application/atom+xml" 
    
    /// Cascading Style Sheets; Defined in RFC 2318
    static let TextCss = "text/css" 
    
    /// commands; subtype resident in Gecko browsers like Firefox 3.5
    static let TextCmd = "text/cmd" 
    
    /// Comma-separated values; Defined in RFC 4180
    static let TextCsv = "text/csv"
    
    /// deb (file format), a software package format used by the Debian project
    static let ApplicationXDeb = "application/x-deb"
    
    /// Defined in RFC 1847
    static let MultipartEncrypted = "multipart/encrypted"
    
    /// Defined in RFC 1847
    static let MultipartSigned = "multipart/signed"

    /// Defined in RFC 2616
    static let MessageHttp = "message/http"
    
    /// Defined in RFC 4735
    static let ModelExample = "model/example"
    
    /// device-independent document in DVI format
    static let ApplicationXDvi = "application/x-dvi"
    
    /// DTD files; Defined by RFC 3023
    static let ApplicationXmlDtd = "application/xml-dtd"
    
    /// ECMAScript/JavaScript; Defined in RFC 4329 (equivalent to application/ecmascript but with looser processing rules) It is not accepted in IE 8 or earlier - text/javascript is accepted but it is defined as obsolete in RFC 4329. The "type" attribute of the <script> tag in HTML5 is optional and in practice omitting the media type of JavaScript programs is the most interoperable solution since all browsers have always assumed the correct default even before HTML5.
    static let ApplicationJavascript = "application/javascript"
    
    /// ECMAScript/JavaScript; Defined in RFC 4329 (equivalent to application/javascript but with stricter processing rules)
    static let ApplicationEcmascript = "application/ecmascript"
    
    /// EDI EDIFACT data; Defined in RFC 1767
    static let ApplicationEdifact = "application/EDIFACT"
    
    /// EDI X12 data; Defined in RFC 1767
    static let ApplicationEdiX12 = "application/EDI-X12"
    
    /// Email; Defined in RFC 2045 and RFC 2046
    static let MessagePartial = "message/partial"
    
    /// Email; EML files, MIME files, MHT files, MHTML files; Defined in RFC 2045 and RFC 2046
    static let MessageRfc822 = "message/rfc822"
    
    /// Extensible Markup Language; Defined in RFC 3023
    static let TextXml = "text/xml"
    
    /// Extensible Markup Language; Defined in RFC 3023
    static let ApplicationXml = "application/xml"
    
    /// Flash video (FLV files)
    static let VideoXFlv = "video/x-flv"
    
    /// GIF image; Defined in RFC 2045 and RFC 2046
    static let ImageGif = "image/gif"
    
    /// GoogleWebToolkit data
    static let TextXGwtRpc = "text/x-gwt-rpc"
    
    /// Gzip
    static let ApplicationXGzip = "application/x-gzip"
    
    /// HTML; Defined in RFC 2854
    static let TextHtml = "text/html"
    
    /// ICO image; Registered
    static let ImageVndMicrosoftIcon = "image/vnd.microsoft.icon"
    
    /// IGS files, IGES files; Defined in RFC 2077
    static let ModelIges = "model/iges"
    
    /// IMDN Instant Message Disposition Notification; Defined in RFC 5438
    static let MessageImdnXml = "message/imdn+xml"
    
    /// JavaScript Object Notation JSON; Defined in RFC 4627
    static let ApplicationJson = "application/json"
    
    /// JavaScript Object Notation (JSON) Patch; Defined in RFC 6902
    static let ApplicationJsonPatch = "application/json-patch+json"
    
    /// JavaScript - Defined in and obsoleted by RFC 4329 in order to discourage its usage in favor of application/javascript. However,text/javascript is allowed in HTML 4 and 5 and, unlike application/javascript, has cross-browser support. The "type" attribute of the <script> tag in HTML5 is optional and there is no need to use it at all since all browsers have always assumed the correct default (even in HTML 4 where it was required by the specification).
    static let TextJavascript = "text/javascript"
    
    /// JPEG JFIF image; Associated with Internet Explorer; Listed in ms775147(v=vs.85) - Progressive JPEG, initiated before global browser support for progressive JPEGs (Microsoft and Firefox).
    static let ImagePjpeg = "image/pjpeg"
    
    /// JPEG JFIF image; Defined in RFC 2045 and RFC 2046
    static let ImageJpeg = "image/jpeg"
    
    /// jQuery template data
    static let TextXJqueryTmpl = "text/x-jquery-tmpl"
    
    /// KML files (e.g. for Google Earth)
    static let ApplicationVndGoogleEarthKmlXml = "application/vnd.google-earth.kml+xml"
    
    /// LaTeX files
    static let ApplicationXLatex = "application/x-latex"
    
    /// Matroska open media format
    static let VideoXMatroska = "video/x-matroska"
    
    /// Microsoft Excel 2007 files
    static let ApplicationVndOpenxmlformatsOfficedocumentSpreadsheetmlSheet = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
    
    /// Microsoft Excel files
    static let ApplicationVndMsExcel = "application/vnd.ms-excel"
    
    /// Microsoft Powerpoint 2007 files
    static let ApplicationVndOpenxmlformatsOfficedocumentPresentationmlPresentation = "application/vnd.openxmlformats-officedocument.presentationml.presentation"
    
    /// Microsoft Powerpoint files
    static let ApplicationVndMsPowerpoint = "application/vnd.ms-powerpoint"
    
    /// Microsoft Word 2007 files
    static let ApplicationVndOpenxmlformatsOfficedocumentWordprocessingmlDocument = "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
    
    /// Microsoft Word files
    static let ApplicationMsword = "application/msword"
    
    /// MIME Email; Defined in RFC 2045 and RFC 2046
    static let MultipartAlternative = "multipart/alternative"
    
    /// MIME Email; Defined in RFC 2045 and RFC 2046
    static let MultipartMixed = "multipart/mixed"
    
    /// MIME Email; Defined in RFC 2387 and used by MHTML (HTML mail)
    static let MultipartRelated = "multipart/related"
    
    /// MIME Webform; Defined in RFC 2388
    static let MultipartFormData = "multipart/form-data"
    
    /// Mozilla XUL files
    static let ApplicationVndMozillaXulXml = "application/vnd.mozilla.xul+xml"
    
    /// MP3 or other MPEG audio; Defined in RFC 3003
    static let AudioMpeg = "audio/mpeg"
    
    /// MP4 audio
    static let AudioMp4 = "audio/mp4"
    
    /// MP4 video; Defined in RFC 4337
    static let VideoMp4 = "video/mp4"
    
    /// MPEG-1 video with multiplexed audio; Defined in RFC 2045 and RFC 2046
    static let VideoMpeg = "video/mpeg"

    /// MSH files, MESH files; Defined in RFC 2077, SILO files
    static let ModelMesh = "model/mesh"
    
    /// mulaw audio at 8 kHz, 1 channel; Defined in RFC 2046
    static let AudioBasic = "audio/basic"
    
    /// Ogg Theora or other video (with audio); Defined in RFC 5334
    static let VideoOgg = "video/ogg"
    
    /// Ogg Vorbis, Speex, Flac and other audio; Defined in RFC 5334
    static let AudioOgg = "audio/ogg"
    
    /// Ogg, a multimedia bitstream container format; Defined in RFC 5334
    static let ApplicationOgg = "application/ogg"
    
    /// OP
    static let ApplicationXopXml = "application/xop+xml"
    
    /// OpenDocument Graphics; Registered
    static let ApplicationVndOasisOpendocumentGraphics = "application/vnd.oasis.opendocument.graphics"
    
    /// OpenDocument Presentation; Registered
    static let ApplicationVndOasisOpendocumentPresentation = "application/vnd.oasis.opendocument.presentation"
    
    /// OpenDocument Spreadsheet; Registered
    static let ApplicationVndOasisOpendocumentSpreadsheet = "application/vnd.oasis.opendocument.spreadsheet"
    
    /// OpenDocument Text; Registered
    static let ApplicationVndOasisOpendocumentText = "application/vnd.oasis.opendocument.text"
    
    /// p12 files
    static let ApplicationXPkcs12 = "application/x-pkcs12"
    
    /// p7b and spc files
    static let ApplicationXPkcs7Certificates = "application/x-pkcs7-certificates"
    
    /// p7c files
    static let ApplicationXPkcs7Mime = "application/x-pkcs7-mime"
    
    /// p7r files
    static let ApplicationXPkcs7Certreqresp = "application/x-pkcs7-certreqresp"
    
    /// p7s files
    static let ApplicationXPkcs7Signature = "application/x-pkcs7-signature"
    
    /// Portable Document Format, PDF has been in use for document exchange on the Internet since 1993; Defined in RFC 3778
    static let ApplicationPdf = "application/pdf"
    
    /// Portable Network Graphics; Registered, Defined in RFC 2083
    static let ImagePng = "image/png"
    
    /// PostScript; Defined in RFC 2046
    static let ApplicationPostscript = "application/postscript"

    /// QuickTime video; Registered
    static let VideoQuicktime = "video/quicktime"
    
    /// RAR archive files
    static let ApplicationXRarCompressed = "application/x-rar-compressed"
    
    /// RealAudio; Documented in RealPlayer Customer Support Answer 2559
    static let AudioVndRnRealaudio = "audio/vnd.rn-realaudio"
    
    /// Resource Description Framework; Defined by RFC 3870
    static let ApplicationRdfXml = "application/rdf+xml"
    
    /// RSS feeds
    static let ApplicationRssXml = "application/rss+xml"
    
    /// SOAP; Defined by RFC 3902
    static let ApplicationSoapXml = "application/soap+xml"
    
    /// StuffIt archive files
    static let ApplicationXStuffit = "application/x-stuffit"
    
    /// SVG vector image; Defined in SVG Tiny 1.2 Specification Appendix M
    static let ImageSvgXml = "image/svg+xml"
    
    /// Tag Image File Format (only for Baseline TIFF); Defined in RFC 3302
    static let ImageTiff = "image/tiff"
    
    /// Tarball files
    static let ApplicationXTar = "application/x-tar"
    
    /// Textual data; Defined in RFC 2046 and RFC 3676
    static let TextPlain = "text/plain"
    
    /// TrueType Font No registered MIME type, but this is the most commonly used
    static let ApplicationXFontTtf = "application/x-font-ttf"

    /// vCard (contact information); Defined in RFC 6350
    static let TextVcard = "text/vcard"
    
    /// Vorbis encoded audio; Defined in RFC 5215
    static let AudioVorbis = "audio/vorbis"

    /// WAV audio; Defined in RFC 2361
    static let AudioVndWave = "audio/vnd.wave"
    
    /// Web Open Font Format; (candidate recommendation; use application/x-font-woff until standard is official)
    static let ApplicationFontWoff = "application/font-woff"
    
    /// WebM Matroska-based open media format
    static let VideoWebm = "video/webm"
    
    /// WebM open media format
    static let AudioWebm = "audio/webm"
    
    /// Windows Media Audio Redirector; Documented in Microsoft help page
    static let AudioXMsWax = "audio/x-ms-wax"
    
    /// Windows Media Audio; Documented in Microsoft KB 288102
    static let AudioXMsWma = "audio/x-ms-wma"
    
    /// Windows Media Video; Documented in Microsoft KB 288102
    static let VideoXMsWmv = "video/x-ms-wmv"
    
    /// WRL files, VRML files; Defined in RFC 2077
    static let ModelVrml = "model/vrml"
    
    /// X3D ISO standard for representing 3D computer graphics, X3D XML files
    static let ModelX3DXml = "model/x3d+xml"
    
    /// X3D ISO standard for representing 3D computer graphics, X3DB binary files
    static let ModelX3DBinary = "model/x3d+binary"
    
    /// X3D ISO standard for representing 3D computer graphics, X3DV VRML files 
    static let ModelX3DVrml = "model/x3d+vrml"
    
    /// XHTML; Defined by RFC 3236 
    static let ApplicationXhtmlXml = "application/xhtml+xml"
    
    /// ZIP archive files; Registered
    static let ApplicationZip = "application/zip"
}

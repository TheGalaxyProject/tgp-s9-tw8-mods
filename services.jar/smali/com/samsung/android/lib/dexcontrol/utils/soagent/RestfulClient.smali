.class public abstract Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;
.super Ljava/lang/Object;
.source "RestfulClient.java"


# static fields
.field public static final RESPONSE_FAIL:I = 0x2

.field public static final RESPONSE_RETRY:I = 0x3

.field public static final RESPONSE_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBody:Lorg/json/JSONObject;

.field private mMethod:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mMethod:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mBody:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected dumpError(Ljava/net/HttpURLConnection;)V
    .registers 10

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_16
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_26

    sget-object v5, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void

    :cond_26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_29} :catch_2a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_2f

    goto :goto_16

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_25

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25
.end method

.method protected dumpHeader(Ljava/net/HttpURLConnection;)V
    .registers 10

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_21

    sget-object v6, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_3e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_11

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e
.end method

.method protected dumpResponse(Ljava/net/HttpURLConnection;)V
    .registers 12

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_12} :catch_6a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_48
    .catchall {:try_start_1 .. :try_end_12} :catchall_57

    :try_start_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_17
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2a

    sget-object v7, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_3e

    move-object v4, v5

    :cond_29
    :goto_29
    return-void

    :cond_2a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2d} :catch_67
    .catchall {:try_start_12 .. :try_end_2d} :catchall_64

    goto :goto_17

    :catch_2e
    move-exception v2

    move-object v4, v5

    :goto_30
    :try_start_30
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_57

    if-eqz v4, :cond_29

    :try_start_35
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_29

    :catch_39
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    :cond_3e
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_43

    :goto_41
    move-object v4, v5

    goto :goto_29

    :catch_43
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    :catch_48
    move-exception v1

    :goto_49
    :try_start_49
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_57

    if-eqz v4, :cond_29

    :try_start_4e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_29

    :catch_52
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    :catchall_57
    move-exception v0

    :goto_58
    if-nez v4, :cond_5b

    :goto_5a
    throw v0

    :cond_5b
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_5a

    :catch_5f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    :catchall_64
    move-exception v0

    move-object v4, v5

    goto :goto_58

    :catch_67
    move-exception v1

    move-object v4, v5

    goto :goto_49

    :catch_6a
    move-exception v2

    goto :goto_30
.end method

.method public execute(Z)I
    .registers 17

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    :try_start_3
    new-instance v8, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_d2

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v9, v0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v12, "Content-Type"

    const-string/jumbo v13, "application/json"

    invoke-virtual {v9, v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "Accept"

    const-string/jumbo v13, "application/xml"

    invoke-virtual {v9, v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getAuthorization()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "Authorization"

    invoke-virtual {v9, v13, v12}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x7530

    invoke-virtual {v9, v12}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v12, 0x7530

    invoke-virtual {v9, v12}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    :goto_4b
    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    const-string/jumbo v13, "UTF-8"

    invoke-direct {v12, v6, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    if-nez p1, :cond_111

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v7

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "responseCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xc8

    if-eq v7, v12, :cond_272

    const/16 v12, 0x193

    if-eq v7, v12, :cond_2bb

    const/16 v12, 0x191

    if-eq v7, v12, :cond_2e7

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "response Fail. responseCode is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z

    move-result v12

    if-eqz v12, :cond_31a

    :goto_c0
    invoke-virtual {p0, v7, v9}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onError(ILjavax/net/ssl/HttpsURLConnection;)V
    :try_end_c3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_c3} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c3} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_c3} :catch_247
    .catchall {:try_start_3 .. :try_end_c3} :catchall_2a0

    const/4 v2, 0x2

    if-nez v9, :cond_324

    :goto_c6
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_329

    :goto_d0
    const/4 v12, 0x2

    return v12

    :cond_d2
    :try_start_d2
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string/jumbo v12, "Content-Type"

    const-string/jumbo v13, "application/json"

    invoke-virtual {v10, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "Accept"

    const-string/jumbo v13, "application/xml"

    invoke-virtual {v10, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getAuthorization()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "Authorization"

    invoke-virtual {v10, v13, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x7530

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v12, 0x7530

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    goto/16 :goto_4b

    :cond_111
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "responseCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xc8

    if-eq v7, v12, :cond_178

    const/16 v12, 0x193

    if-eq v7, v12, :cond_1c5

    const/16 v12, 0x191

    if-eq v7, v12, :cond_1f1

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "response Fail. responseCode is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljava/net/HttpURLConnection;)Z

    move-result v12

    if-eqz v12, :cond_23d

    :goto_166
    invoke-virtual {p0, v7, v10}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onError(ILjava/net/HttpURLConnection;)V
    :try_end_169
    .catch Ljava/net/MalformedURLException; {:try_start_d2 .. :try_end_169} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_169} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d2 .. :try_end_169} :catch_247
    .catchall {:try_start_d2 .. :try_end_169} :catchall_2a0

    const/4 v2, 0x2

    if-nez v9, :cond_262

    :goto_16c
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_267

    :goto_176
    const/4 v12, 0x2

    return v12

    :cond_178
    :try_start_178
    invoke-virtual {p0, v10}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljava/net/HttpURLConnection;)Z

    move-result v12

    if-eqz v12, :cond_19d

    :goto_17e
    invoke-virtual {p0, v10}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onResult(Ljava/net/HttpURLConnection;)Z

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18e
    .catch Ljava/net/MalformedURLException; {:try_start_178 .. :try_end_18e} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_18e} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_178 .. :try_end_18e} :catch_247
    .catchall {:try_start_178 .. :try_end_18e} :catchall_2a0

    const/4 v2, 0x1

    if-nez v9, :cond_1b8

    :goto_191
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_1bc

    :goto_19b
    const/4 v12, 0x1

    return v12

    :cond_19d
    :try_start_19d
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Header Fail, But response OK."

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a5
    .catch Ljava/net/MalformedURLException; {:try_start_19d .. :try_end_1a5} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a5} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19d .. :try_end_1a5} :catch_247
    .catchall {:try_start_19d .. :try_end_1a5} :catchall_2a0

    goto :goto_17e

    :catch_1a6
    move-exception v4

    :try_start_1a7
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1aa
    .catchall {:try_start_1a7 .. :try_end_1aa} :catchall_2a0

    if-nez v9, :cond_334

    :goto_1ac
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_339

    :cond_1b6
    :goto_1b6
    const/4 v12, 0x2

    return v12

    :cond_1b8
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_191

    :cond_1bc
    :try_start_1bc
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1bf} :catch_1c0

    goto :goto_19b

    :catch_1c0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19b

    :cond_1c5
    :try_start_1c5
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onResultBlock()V

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d5
    .catch Ljava/net/MalformedURLException; {:try_start_1c5 .. :try_end_1d5} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1d5} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c5 .. :try_end_1d5} :catch_247
    .catchall {:try_start_1c5 .. :try_end_1d5} :catchall_2a0

    const/4 v2, 0x2

    if-nez v9, :cond_1e4

    :goto_1d8
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_1e8

    :goto_1e2
    const/4 v12, 0x2

    return v12

    :cond_1e4
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_1d8

    :cond_1e8
    :try_start_1e8
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1eb
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1eb} :catch_1ec

    goto :goto_1e2

    :catch_1ec
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e2

    :cond_1f1
    :try_start_1f1
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Get TOKEN from first HTTP_UNAUTHORIZED"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljava/net/HttpURLConnection;)Z
    :try_end_1fc
    .catch Ljava/net/MalformedURLException; {:try_start_1f1 .. :try_end_1fc} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_1fc} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f1 .. :try_end_1fc} :catch_247
    .catchall {:try_start_1f1 .. :try_end_1fc} :catchall_2a0

    move-result v12

    if-eqz v12, :cond_20e

    :goto_1ff
    const/4 v2, 0x3

    if-nez v9, :cond_230

    :goto_202
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_234

    :goto_20c
    const/4 v12, 0x3

    return v12

    :cond_20e
    :try_start_20e
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "No TOKEN!"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_216
    .catch Ljava/net/MalformedURLException; {:try_start_20e .. :try_end_216} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_216} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20e .. :try_end_216} :catch_247
    .catchall {:try_start_20e .. :try_end_216} :catchall_2a0

    goto :goto_1ff

    :catch_217
    move-exception v3

    :try_start_218
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21b
    .catchall {:try_start_218 .. :try_end_21b} :catchall_2a0

    if-nez v9, :cond_344

    :goto_21d
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1b6

    :try_start_227
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_22a
    .catch Ljava/io/IOException; {:try_start_227 .. :try_end_22a} :catch_22b

    goto :goto_1b6

    :catch_22b
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b6

    :cond_230
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_202

    :cond_234
    :try_start_234
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_237
    .catch Ljava/io/IOException; {:try_start_234 .. :try_end_237} :catch_238

    goto :goto_20c

    :catch_238
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20c

    :cond_23d
    :try_start_23d
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Header Fail"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_245
    .catch Ljava/net/MalformedURLException; {:try_start_23d .. :try_end_245} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_23d .. :try_end_245} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23d .. :try_end_245} :catch_247
    .catchall {:try_start_23d .. :try_end_245} :catchall_2a0

    goto/16 :goto_166

    :catch_247
    move-exception v5

    :try_start_248
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_24b
    .catchall {:try_start_248 .. :try_end_24b} :catchall_2a0

    if-nez v9, :cond_349

    :goto_24d
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_1b6

    :try_start_257
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_25a
    .catch Ljava/io/IOException; {:try_start_257 .. :try_end_25a} :catch_25c

    goto/16 :goto_1b6

    :catch_25c
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1b6

    :cond_262
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_16c

    :cond_267
    :try_start_267
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_26a
    .catch Ljava/io/IOException; {:try_start_267 .. :try_end_26a} :catch_26c

    goto/16 :goto_176

    :catch_26c
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_176

    :cond_272
    :try_start_272
    invoke-virtual {p0, v9}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z

    move-result v12

    if-eqz v12, :cond_297

    :goto_278
    invoke-virtual {p0, v9}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onResult(Ljavax/net/ssl/HttpsURLConnection;)Z

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_288
    .catch Ljava/net/MalformedURLException; {:try_start_272 .. :try_end_288} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_272 .. :try_end_288} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_272 .. :try_end_288} :catch_247
    .catchall {:try_start_272 .. :try_end_288} :catchall_2a0

    const/4 v2, 0x1

    if-nez v9, :cond_2ae

    :goto_28b
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_2b2

    :goto_295
    const/4 v12, 0x1

    return v12

    :cond_297
    :try_start_297
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Header Fail, But response OK."

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29f
    .catch Ljava/net/MalformedURLException; {:try_start_297 .. :try_end_29f} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_297 .. :try_end_29f} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_297 .. :try_end_29f} :catch_247
    .catchall {:try_start_297 .. :try_end_29f} :catchall_2a0

    goto :goto_278

    :catchall_2a0
    move-exception v1

    if-nez v9, :cond_34e

    :goto_2a3
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_353

    :goto_2ad
    throw v1

    :cond_2ae
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_28b

    :cond_2b2
    :try_start_2b2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2b5
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_2b5} :catch_2b6

    goto :goto_295

    :catch_2b6
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_295

    :cond_2bb
    :try_start_2bb
    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onResultBlock()V

    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->getBody()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2cb
    .catch Ljava/net/MalformedURLException; {:try_start_2bb .. :try_end_2cb} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_2bb .. :try_end_2cb} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2bb .. :try_end_2cb} :catch_247
    .catchall {:try_start_2bb .. :try_end_2cb} :catchall_2a0

    const/4 v2, 0x2

    if-nez v9, :cond_2da

    :goto_2ce
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_2de

    :goto_2d8
    const/4 v12, 0x2

    return v12

    :cond_2da
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_2ce

    :cond_2de
    :try_start_2de
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2e1
    .catch Ljava/io/IOException; {:try_start_2de .. :try_end_2e1} :catch_2e2

    goto :goto_2d8

    :catch_2e2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d8

    :cond_2e7
    :try_start_2e7
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Get TOKEN from first HTTP_UNAUTHORIZED"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z
    :try_end_2f2
    .catch Ljava/net/MalformedURLException; {:try_start_2e7 .. :try_end_2f2} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_2e7 .. :try_end_2f2} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e7 .. :try_end_2f2} :catch_247
    .catchall {:try_start_2e7 .. :try_end_2f2} :catchall_2a0

    move-result v12

    if-eqz v12, :cond_304

    :goto_2f5
    const/4 v2, 0x3

    if-nez v9, :cond_30d

    :goto_2f8
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "urlConnection.disconnect()"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_311

    :goto_302
    const/4 v12, 0x3

    return v12

    :cond_304
    :try_start_304
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "No TOKEN!"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30c
    .catch Ljava/net/MalformedURLException; {:try_start_304 .. :try_end_30c} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_304 .. :try_end_30c} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_304 .. :try_end_30c} :catch_247
    .catchall {:try_start_304 .. :try_end_30c} :catchall_2a0

    goto :goto_2f5

    :cond_30d
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_2f8

    :cond_311
    :try_start_311
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_314
    .catch Ljava/io/IOException; {:try_start_311 .. :try_end_314} :catch_315

    goto :goto_302

    :catch_315
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_302

    :cond_31a
    :try_start_31a
    sget-object v12, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Header Fail"

    invoke-static {v12, v13}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_322
    .catch Ljava/net/MalformedURLException; {:try_start_31a .. :try_end_322} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_31a .. :try_end_322} :catch_217
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31a .. :try_end_322} :catch_247
    .catchall {:try_start_31a .. :try_end_322} :catchall_2a0

    goto/16 :goto_c0

    :cond_324
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_c6

    :cond_329
    :try_start_329
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_32c
    .catch Ljava/io/IOException; {:try_start_329 .. :try_end_32c} :catch_32e

    goto/16 :goto_d0

    :catch_32e
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d0

    :cond_334
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1ac

    :cond_339
    :try_start_339
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_33c
    .catch Ljava/io/IOException; {:try_start_339 .. :try_end_33c} :catch_33e

    goto/16 :goto_1b6

    :catch_33e
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1b6

    :cond_344
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_21d

    :cond_349
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_24d

    :cond_34e
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_2a3

    :cond_353
    :try_start_353
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_356
    .catch Ljava/io/IOException; {:try_start_353 .. :try_end_356} :catch_358

    goto/16 :goto_2ad

    :catch_358
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2ad
.end method

.method public abstract getAuthorization()Ljava/lang/String;
.end method

.method public getBody()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public getMD5Digest(Ljava/lang/String;)[B
    .registers 6

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v3

    return-object v3

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/RestfulClient;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract onError(ILjava/net/HttpURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onError(ILjavax/net/ssl/HttpsURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onReponseHeader(Ljava/net/HttpURLConnection;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onReponseHeader(Ljavax/net/ssl/HttpsURLConnection;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onResult(Ljava/net/HttpURLConnection;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onResult(Ljavax/net/ssl/HttpsURLConnection;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onResultBlock()V
    .registers 1

    return-void
.end method

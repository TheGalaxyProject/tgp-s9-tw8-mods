.class Lorg/apache/http/impl/auth/HttpEntityDigester;
.super Ljava/io/OutputStream;
.source "HttpEntityDigester.java"


# instance fields
.field private closed:Z

.field private digest:[B

.field private final digester:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    iget-object v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->closed:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->closed:Z

    iget-object v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digest:[B

    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_13
    return-void
.end method

.method public getDigest()[B
    .registers 2

    iget-object v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digest:[B

    return-object v0
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->closed:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    return-void

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream has been already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->closed:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/apache/http/impl/auth/HttpEntityDigester;->digester:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream has been already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

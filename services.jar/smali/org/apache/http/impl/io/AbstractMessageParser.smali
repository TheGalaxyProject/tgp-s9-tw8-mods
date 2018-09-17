.class public abstract Lorg/apache/http/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

# interfaces
.implements Lorg/apache/http/io/HttpMessageParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/http/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/io/HttpMessageParser",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final HEADERS:I = 0x1

.field private static final HEAD_LINE:I


# instance fields
.field private final headerLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/util/CharArrayBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected final lineParser:Lorg/apache/http/message/LineParser;

.field private message:Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final messageConstraints:Lorg/apache/http/config/MessageConstraints;

.field private final sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

.field private state:I


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/config/MessageConstraints;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/io/SessionInputBuffer;

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    if-nez p2, :cond_12

    sget-object p2, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    :cond_12
    iput-object p2, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    if-nez p3, :cond_18

    sget-object p3, Lorg/apache/http/config/MessageConstraints;->DEFAULT:Lorg/apache/http/config/MessageConstraints;

    :cond_18
    iput-object p3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Session input buffer"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "HTTP parameters"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-static {p3}, Lorg/apache/http/params/HttpParamConfig;->getMessageConstraints(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/config/MessageConstraints;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    if-nez p2, :cond_1b

    sget-object p2, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    :cond_1b
    iput-object p2, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    return-void
.end method

.method public static parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_9

    sget-object p3, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    :cond_9
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;Ljava/util/List;)[Lorg/apache/http/Header;

    move-result-object v1

    return-object v1
.end method

.method public static parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;Ljava/util/List;)[Lorg/apache/http/Header;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/io/SessionInputBuffer;",
            "II",
            "Lorg/apache/http/message/LineParser;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/util/CharArrayBuffer;",
            ">;)[",
            "Lorg/apache/http/Header;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v8, "Session input buffer"

    invoke-static {p0, v8}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v8, "Line parser"

    invoke-static {p3, v8}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v8, "Header line list"

    invoke-static {p4, v8}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v7, 0x0

    :cond_14
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    :goto_19
    invoke-interface {p0, v2}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_36

    :cond_20
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    new-array v4, v8, [Lorg/apache/http/Header;

    const/4 v5, 0x0

    :goto_27
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v5, v8, :cond_a6

    return-object v4

    :cond_2e
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v8, 0x40

    invoke-direct {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    goto :goto_19

    :cond_36
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_20

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_5e

    :cond_46
    if-nez v7, :cond_68

    :goto_48
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v2

    const/4 v2, 0x0

    :goto_4d
    if-lez p1, :cond_14

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, p1, :cond_14

    new-instance v8, Lorg/apache/http/MessageConstraintException;

    const-string/jumbo v9, "Maximum header count exceeded"

    invoke-direct {v8, v9}, Lorg/apache/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5e
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x9

    if-eq v8, v9, :cond_46

    goto :goto_48

    :cond_68
    const/4 v5, 0x0

    :goto_69
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    if-lt v5, v8, :cond_7f

    :cond_6f
    if-gtz p2, :cond_8f

    :cond_71
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v7, v2, v5, v8}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    goto :goto_4d

    :cond_7f
    invoke-virtual {v2, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    const/16 v8, 0x20

    if-ne v1, v8, :cond_8a

    :goto_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    :cond_8a
    const/16 v8, 0x9

    if-ne v1, v8, :cond_6f

    goto :goto_87

    :cond_8f
    invoke-virtual {v7}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v5

    if-le v8, p2, :cond_71

    new-instance v8, Lorg/apache/http/MessageConstraintException;

    const-string/jumbo v9, "Maximum line length limit exceeded"

    invoke-direct {v8, v9}, Lorg/apache/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_a6
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/util/CharArrayBuffer;

    :try_start_ac
    invoke-interface {p3, v0}, Lorg/apache/http/message/LineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object v8

    aput-object v8, v4, v5
    :try_end_b2
    .catch Lorg/apache/http/ParseException; {:try_start_ac .. :try_end_b2} :catch_b6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_27

    :catch_b6
    move-exception v3

    new-instance v8, Lorg/apache/http/ProtocolException;

    invoke-virtual {v3}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8
.end method


# virtual methods
.method public parse()Lorg/apache/http/HttpMessage;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    iget v3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    packed-switch v3, :pswitch_data_4e

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Inconsistent parser state"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_e
    :try_start_e
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->message:Lorg/apache/http/HttpMessage;
    :try_end_16
    .catch Lorg/apache/http/ParseException; {:try_start_e .. :try_end_16} :catch_42

    const/4 v4, 0x1

    iput v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    :pswitch_19
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    invoke-virtual {v5}, Lorg/apache/http/config/MessageConstraints;->getMaxHeaderCount()I

    move-result v5

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->messageConstraints:Lorg/apache/http/config/MessageConstraints;

    invoke-virtual {v6}, Lorg/apache/http/config/MessageConstraints;->getMaxLineLength()I

    move-result v6

    iget-object v7, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v8, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    invoke-static {v4, v5, v6, v7, v8}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;Ljava/util/List;)[Lorg/apache/http/Header;

    move-result-object v0

    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->message:Lorg/apache/http/HttpMessage;

    invoke-interface {v4, v0}, Lorg/apache/http/HttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->message:Lorg/apache/http/HttpMessage;

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->message:Lorg/apache/http/HttpMessage;

    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    return-object v2

    :catch_42
    move-exception v1

    new-instance v4, Lorg/apache/http/ProtocolException;

    invoke-virtual {v1}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_19
    .end packed-switch
.end method

.method protected abstract parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/io/SessionInputBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation
.end method
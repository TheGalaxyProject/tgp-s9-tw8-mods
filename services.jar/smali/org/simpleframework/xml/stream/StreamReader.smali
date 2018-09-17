.class Lorg/simpleframework/xml/stream/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/StreamReader$1;,
        Lorg/simpleframework/xml/stream/StreamReader$End;,
        Lorg/simpleframework/xml/stream/StreamReader$Entry;,
        Lorg/simpleframework/xml/stream/StreamReader$Start;,
        Lorg/simpleframework/xml/stream/StreamReader$Text;
    }
.end annotation


# instance fields
.field private peek:Lorg/simpleframework/xml/stream/EventNode;

.field private reader:Ljavax/xml/stream/XMLEventReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/StreamReader;->reader:Ljavax/xml/stream/XMLEventReader;

    return-void
.end method

.method private attribute(Ljavax/xml/stream/events/Attribute;)Lorg/simpleframework/xml/stream/StreamReader$Entry;
    .registers 3

    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Entry;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Entry;-><init>(Ljavax/xml/stream/events/Attribute;)V

    return-object v0
.end method

.method private build(Lorg/simpleframework/xml/stream/StreamReader$Start;)Lorg/simpleframework/xml/stream/StreamReader$Start;
    .registers 6

    invoke-virtual {p1}, Lorg/simpleframework/xml/stream/StreamReader$Start;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    return-object p1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/events/Attribute;

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/StreamReader;->attribute(Ljavax/xml/stream/events/Attribute;)Lorg/simpleframework/xml/stream/StreamReader$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/StreamReader$Entry;->isReserved()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1, v0}, Lorg/simpleframework/xml/stream/StreamReader$Start;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private end()Lorg/simpleframework/xml/stream/StreamReader$End;
    .registers 3

    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$End;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/StreamReader$End;-><init>(Lorg/simpleframework/xml/stream/StreamReader$1;)V

    return-object v0
.end method

.method private read()Lorg/simpleframework/xml/stream/EventNode;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lorg/simpleframework/xml/stream/StreamReader;->reader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    return-object v1

    :cond_e
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    return-object v1

    :cond_25
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->start(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Start;

    move-result-object v1

    return-object v1

    :cond_2a
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->text(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Text;

    move-result-object v1

    return-object v1

    :cond_2f
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->end()Lorg/simpleframework/xml/stream/StreamReader$End;

    move-result-object v1

    return-object v1
.end method

.method private start(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Start;
    .registers 4

    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Start;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Start;-><init>(Ljavax/xml/stream/events/XMLEvent;)V

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/StreamReader$Start;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/StreamReader;->build(Lorg/simpleframework/xml/stream/StreamReader$Start;)Lorg/simpleframework/xml/stream/StreamReader$Start;

    move-result-object v1

    return-object v1
.end method

.method private text(Ljavax/xml/stream/events/XMLEvent;)Lorg/simpleframework/xml/stream/StreamReader$Text;
    .registers 3

    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader$Text;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader$Text;-><init>(Ljavax/xml/stream/events/XMLEvent;)V

    return-object v0
.end method


# virtual methods
.method public next()Lorg/simpleframework/xml/stream/EventNode;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-eqz v0, :cond_8

    iput-object v1, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/StreamReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    goto :goto_7
.end method

.method public peek()Lorg/simpleframework/xml/stream/EventNode;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/StreamReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/StreamReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    goto :goto_4
.end method

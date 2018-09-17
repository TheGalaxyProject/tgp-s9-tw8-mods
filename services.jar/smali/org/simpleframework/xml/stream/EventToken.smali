.class abstract Lorg/simpleframework/xml/stream/EventToken;
.super Ljava/lang/Object;
.source "EventToken.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventNode;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLine()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnd()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isStart()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isText()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/stream/Attribute;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.class abstract Lorg/simpleframework/xml/stream/EventElement;
.super Ljava/util/ArrayList;
.source "EventElement.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventNode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/simpleframework/xml/stream/Attribute;",
        ">;",
        "Lorg/simpleframework/xml/stream/EventNode;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public getLine()I
    .registers 2

    const/4 v0, -0x1

    return v0
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

    const/4 v0, 0x1

    return v0
.end method

.method public isText()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.class public interface abstract Lcom/samsung/android/friends/action/ActionExecutable;
.super Ljava/lang/Object;
.source "ActionExecutable.java"


# virtual methods
.method public abstract execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
.end method

.method public executeOnSameThread(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public preExecute(Landroid/os/Bundle;II)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

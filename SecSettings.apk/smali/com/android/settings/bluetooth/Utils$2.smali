.class final Lcom/android/settings/bluetooth/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/Utils$SemErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const v0, 0x7f120408

    invoke-static {p1, p2, v0}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public showHIDConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, ""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const v2, 0x7f120451

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showPANConnectingError(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u200e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, ""

    if-eqz p3, :cond_31

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const v2, 0x7f12048e

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_31
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p2, v1, v4

    const v2, 0x7f12048c

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method

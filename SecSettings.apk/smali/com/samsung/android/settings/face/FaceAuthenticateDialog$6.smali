.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$6;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setEditBoxListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$6;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_12

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_29

    :cond_12
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_19

    return v3

    :cond_19
    if-eqz p1, :cond_28

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$6;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap8(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    :cond_28
    return v3

    :cond_29
    return v2
.end method

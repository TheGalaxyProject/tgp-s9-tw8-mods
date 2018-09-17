.class Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$5;
.super Ljava/lang/Object;
.source "IrisConfirmBackupPassword.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->setEditBoxListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$5;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

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

    if-ne v0, v1, :cond_23

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_11

    return v3

    :cond_11
    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$5;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$5;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->-wrap0(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V

    :cond_22
    return v3

    :cond_23
    return v2
.end method

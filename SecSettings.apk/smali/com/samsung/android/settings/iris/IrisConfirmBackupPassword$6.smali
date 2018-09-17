.class Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$6;
.super Ljava/lang/Object;
.source "IrisConfirmBackupPassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$6;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_13

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$6;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->-wrap0(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V

    :cond_11
    const/4 v0, 0x1

    return v0

    :cond_13
    return v1
.end method

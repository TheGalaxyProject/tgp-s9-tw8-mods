.class Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$1;
.super Landroid/os/Handler;
.source "BiometricsBackupPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->updateStage(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$Stage;)V

    :cond_e
    return-void
.end method

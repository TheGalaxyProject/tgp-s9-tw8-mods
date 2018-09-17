.class Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegistrationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "mmtel"

    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_WIFI_CALLING_ICON:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set4(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateImsConnectedState()V

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoWifiConnected:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateVoWifiConnectedState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCarrierText()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "RegistrationListener onDeregistered : VoWifi is Disconnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    :goto_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "RegistrationListener onDeregistered : non- MMTEL_VOICE "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    const-string/jumbo v0, "mmtel"

    invoke-virtual {p1, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_WIFI_CALLING_ICON:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->-set4(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateImsConnectedState()V

    :cond_1a
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    if-ne v0, v1, :cond_46

    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoWifiConnected:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "RegistrationListener onRegistered : VoWifi is Connected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateVoWifiConnectedState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCarrierText()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    :goto_45
    return-void

    :cond_46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mVoWifiConnected:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "RegistrationListener onRegistered : VoLte is Connected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$RegistrationListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "RegistrationListener onRegistered : non- MMTEL_VOICE "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

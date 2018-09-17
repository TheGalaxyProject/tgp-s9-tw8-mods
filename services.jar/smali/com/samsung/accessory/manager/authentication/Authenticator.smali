.class public abstract Lcom/samsung/accessory/manager/authentication/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# instance fields
.field protected mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

.field protected mContext:Landroid/content/Context;

.field protected mType:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    return-void
.end method


# virtual methods
.method close()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->close()V

    :cond_9
    return-void
.end method

.method connect()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->connect(Ljava/lang/String;)Z

    :cond_a
    return-void
.end method

.method disconnect()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disconnect()Z

    :cond_9
    return-void
.end method

.method public getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;
    .registers 2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    return-object v0
.end method

.method public getConnectivityType()I
    .registers 2

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    return v0
.end method

.method abstract onAuthenticationChallenge(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
.end method

.method abstract onInterrupted()V
.end method

.method public sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setApiState(I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v0

    return-object v0
.end method

.method public sendStopAuth()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStopAuth()Z

    move-result v0

    return v0
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_c

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setApiState(I)V

    :cond_c
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    move-result-object v0

    return-object v0
.end method

.method setConnection()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mType:I

    packed-switch v0, :pswitch_data_2c

    :goto_a
    return-void

    :pswitch_b
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    goto :goto_a

    :pswitch_16
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    goto :goto_a

    :pswitch_21
    new-instance v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setConnection(Lcom/samsung/accessory/manager/connectivity/Connectivity;)V

    goto :goto_a

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_16
        :pswitch_21
    .end packed-switch
.end method

.method abstract setInterrupt(Z)V
.end method

.method setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    return-void
.end method

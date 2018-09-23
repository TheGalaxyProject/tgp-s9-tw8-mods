.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;
.super Ljava/lang/Object;
.source "ClientCertificateManager.java"

# interfaces
.implements Lcom/android/server/enterprise/ccm/ClientCertificateManager$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "installObjectDispatcher"
.end annotation


# instance fields
.field installType:I

.field objectData:[B

.field objectPassword:Ljava/lang/String;

.field objectType:I

.field profile:Lcom/samsung/android/knox/keystore/CertificateProfile;

.field status:Z

.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

.field userAuthRequired:Z

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;IZ)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->userId:I

    iput-object p3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->profile:Lcom/samsung/android/knox/keystore/CertificateProfile;

    iput p4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->objectType:I

    iput-object p5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->objectData:[B

    iput-object p6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->objectPassword:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->installType:I

    iput-boolean p8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->userAuthRequired:Z

    return-void
.end method


# virtual methods
.method public dispatch()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->userId:I

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap9(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/android/server/enterprise/ccm/ClientCertificateManager$Dispatcher;)V

    return-void
.end method

.method public getStatus()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->dispatch()V

    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->status:Z

    return v0
.end method

.method public process(Landroid/security/IKnoxKeyChainService;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :try_start_0
    iget v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->userId:I

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->profile:Lcom/samsung/android/knox/keystore/CertificateProfile;

    iget v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->objectType:I

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->objectData:[B

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->objectPassword:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->installType:I

    iget-boolean v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->userAuthRequired:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Landroid/security/IKnoxKeyChainService;->UKSinstallObject(ILcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$installObjectDispatcher;->status:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v8

    throw v8
.end method

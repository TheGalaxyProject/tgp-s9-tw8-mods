.class public Lcom/android/server/pm/TimaHelper;
.super Ljava/lang/Object;
.source "TimaHelper.java"


# static fields
.field public static ALIAS_PERSONA_FS:Ljava/lang/String; = null

.field public static ALIAS_PERSONA_PWD:Ljava/lang/String; = null

.field public static ALIAS_PERSONA_PWDHINT:Ljava/lang/String; = null

.field public static ALIAS_PERSONA_PWD_RESET_TOKEN:Ljava/lang/String; = null

.field private static final DEBUG:Z

.field private static final TIMA_LOG_TAG:Ljava/lang/String; = "TimaHelper"

.field private static final TYPE_TIMA_FIPS_KEYSTORE:Ljava/lang/String; = "FipsTimaKeyStore"

.field private static final TYPE_TIMA_KEYSTORE:Ljava/lang/String; = "TIMAKeyStore"

.field private static mTimaHelper:Lcom/android/server/pm/TimaHelper;


# instance fields
.field private mTksName:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/TimaHelper;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    const-string/jumbo v0, "ecryptfsKey"

    sput-object v0, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_FS:Ljava/lang/String;

    const-string/jumbo v0, "PersonaPasswordKey"

    sput-object v0, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWD:Ljava/lang/String;

    const-string/jumbo v0, "PersonaPasswordHintKey"

    sput-object v0, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWDHINT:Ljava/lang/String;

    const-string/jumbo v0, "PersonaPwdResetToken"

    sput-object v0, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "NONE"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    const-string/jumbo v0, "NONE"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->initTimaHelper()V

    const-string/jumbo v0, "TimaHelper"

    const-string/jumbo v1, "TimaHelper created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkTimaError(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/TimaException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_10

    return-void

    :pswitch_4
    const/16 v0, 0x64

    if-lt p1, v0, :cond_a

    const/16 v0, 0xc8

    :cond_a
    new-instance v0, Lcom/android/server/pm/TimaException;

    invoke-direct {v0}, Lcom/android/server/pm/TimaException;-><init>()V

    throw v0

    :pswitch_data_10
    .packed-switch 0x1000c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/pm/TimaHelper;
    .registers 1

    sget-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/pm/TimaHelper;

    invoke-direct {v0}, Lcom/android/server/pm/TimaHelper;-><init>()V

    sput-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    :cond_b
    sget-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object v0
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_b
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_b} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    return-object v2

    :catch_c
    move-exception v0

    const-string/jumbo v3, "TimaHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to load TKS instance... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_2a
    move-exception v1

    const-string/jumbo v3, "TimaHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get TKS instance... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .registers 3

    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    return-object v0
.end method

.method private initTimaHelper()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/pm/TimaHelper;->isFipsAvilable()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "FIPS3.0"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    const-string/jumbo v0, "FipsTimaKeyStore"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    :goto_10
    const-string/jumbo v0, "initTimaHelper()"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/TimaHelper;->dump(Ljava/lang/String;)V

    return-void

    :cond_17
    const-string/jumbo v0, "3.0"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    const-string/jumbo v0, "TIMAKeyStore"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    goto :goto_10
.end method


# virtual methods
.method public checkEntry(ILjava/lang/String;)Z
    .registers 11

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/TimaHelper;->checkTimaStatus(I)Z
    :try_end_4
    .catch Lcom/android/server/pm/TimaException; {:try_start_1 .. :try_end_4} :catch_51

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v2, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_f} :catch_54
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_41
    .catchall {:try_start_8 .. :try_end_f} :catchall_64

    move-result v3

    if-nez v2, :cond_1b

    :try_start_12
    const-string/jumbo v5, "TimaHelper"

    const-string/jumbo v6, "checkEntry() - Null keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Lcom/android/server/pm/TimaException; {:try_start_12 .. :try_end_1b} :catch_51

    :cond_1b
    :goto_1b
    const-string/jumbo v5, "TimaHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkEntry("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "), result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_41
    move-exception v0

    :try_start_42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_64

    if-nez v2, :cond_1b

    :try_start_47
    const-string/jumbo v5, "TimaHelper"

    const-string/jumbo v6, "checkEntry() - Null keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Lcom/android/server/pm/TimaException; {:try_start_47 .. :try_end_50} :catch_51

    goto :goto_1b

    :catch_51
    move-exception v4

    const/4 v5, 0x0

    return v5

    :catch_54
    move-exception v1

    :try_start_55
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_64

    if-nez v2, :cond_1b

    :try_start_5a
    const-string/jumbo v5, "TimaHelper"

    const-string/jumbo v6, "checkEntry() - Null keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catchall_64
    move-exception v5

    if-nez v2, :cond_70

    const-string/jumbo v6, "TimaHelper"

    const-string/jumbo v7, "checkEntry() - Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    throw v5
    :try_end_71
    .catch Lcom/android/server/pm/TimaException; {:try_start_5a .. :try_end_71} :catch_51
.end method

.method public checkTimaStatus(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/TimaException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/TimaHelper;->getTimaStatus()I

    move-result v1

    if-nez v1, :cond_3d

    const/4 v0, 0x1

    :goto_7
    const-string/jumbo v2, "TimaHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkTimaStatus() - Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Validation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/TimaHelper;->checkTimaError(II)V

    return v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public deleteEntry(ILjava/lang/String;)V
    .registers 10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteEntry("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/TimaHelper;->dump(Ljava/lang/String;)V

    :try_start_1e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/TimaHelper;->checkTimaStatus(I)Z
    :try_end_21
    .catch Lcom/android/server/pm/TimaException; {:try_start_1e .. :try_end_21} :catch_4e

    move-result v4

    if-eqz v4, :cond_3d

    const/4 v2, 0x0

    :try_start_25
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v2, p2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/security/KeyStoreException; {:try_start_25 .. :try_end_32} :catch_50
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_32} :catch_3e
    .catchall {:try_start_25 .. :try_end_32} :catchall_60

    :cond_32
    if-nez v2, :cond_3d

    :try_start_34
    const-string/jumbo v4, "TimaHelper"

    const-string/jumbo v5, "getEntry() - Null keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Lcom/android/server/pm/TimaException; {:try_start_34 .. :try_end_3d} :catch_4e

    :cond_3d
    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    :try_start_3f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_60

    if-nez v2, :cond_3d

    :try_start_44
    const-string/jumbo v4, "TimaHelper"

    const-string/jumbo v5, "getEntry() - Null keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Lcom/android/server/pm/TimaException; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_3d

    :catch_4e
    move-exception v3

    return-void

    :catch_50
    move-exception v1

    :try_start_51
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_60

    if-nez v2, :cond_3d

    :try_start_56
    const-string/jumbo v4, "TimaHelper"

    const-string/jumbo v5, "getEntry() - Null keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :catchall_60
    move-exception v4

    if-nez v2, :cond_6c

    const-string/jumbo v5, "TimaHelper"

    const-string/jumbo v6, "getEntry() - Null keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    throw v4
    :try_end_6d
    .catch Lcom/android/server/pm/TimaException; {:try_start_56 .. :try_end_6d} :catch_4e
.end method

.method public dump(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/pm/TimaHelper;->DEBUG:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "TimaHelper"

    const-string/jumbo v1, "### Dump of TimaHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2a

    const-string/jumbo v0, "TimaHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "### : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const-string/jumbo v0, "TimaHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "### TimaHelper = { TksName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getEntry(ILjava/lang/String;)[B
    .registers 13

    const/4 v9, 0x0

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getEntry("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/pm/TimaHelper;->dump(Ljava/lang/String;)V

    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/pm/TimaHelper;->checkTimaStatus(I)Z
    :try_end_23
    .catch Lcom/android/server/pm/TimaException; {:try_start_20 .. :try_end_23} :catch_84

    move-result v6

    if-eqz v6, :cond_50

    const/4 v3, 0x0

    :try_start_27
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-direct {p0, p1}, Lcom/android/server/pm/TimaHelper;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v6

    invoke-virtual {v3, p2, v6}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_44
    .catch Ljava/security/KeyStoreException; {:try_start_27 .. :try_end_44} :catch_86
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_44} :catch_74
    .catchall {:try_start_27 .. :try_end_44} :catchall_96

    move-result-object v4

    :cond_45
    if-nez v3, :cond_50

    :try_start_47
    const-string/jumbo v6, "TimaHelper"

    const-string/jumbo v7, "getEntry() - Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Lcom/android/server/pm/TimaException; {:try_start_47 .. :try_end_50} :catch_84

    :cond_50
    :goto_50
    if-nez v4, :cond_a3

    const-string/jumbo v6, "TimaHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "key not found : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in TIMA keystore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_73
    return-object v4

    :catch_74
    move-exception v0

    :try_start_75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_96

    if-nez v3, :cond_50

    :try_start_7a
    const-string/jumbo v6, "TimaHelper"

    const-string/jumbo v7, "getEntry() - Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Lcom/android/server/pm/TimaException; {:try_start_7a .. :try_end_83} :catch_84

    goto :goto_50

    :catch_84
    move-exception v5

    return-object v9

    :catch_86
    move-exception v1

    :try_start_87
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_96

    if-nez v3, :cond_50

    :try_start_8c
    const-string/jumbo v6, "TimaHelper"

    const-string/jumbo v7, "getEntry() - Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :catchall_96
    move-exception v6

    if-nez v3, :cond_a2

    const-string/jumbo v7, "TimaHelper"

    const-string/jumbo v8, "getEntry() - Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    throw v6
    :try_end_a3
    .catch Lcom/android/server/pm/TimaException; {:try_start_8c .. :try_end_a3} :catch_84

    :cond_a3
    const-string/jumbo v6, "TimaHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " from TIMA keystore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73
.end method

.method public getTimaStatus()I
    .registers 11

    const/4 v4, -0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v2, 0x0

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    const-string/jumbo v8, "3.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    if-eqz v3, :cond_57

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_78
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_8a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_9c

    move-result v4

    :goto_1b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1e
    if-eqz v4, :cond_45

    const-string/jumbo v5, "TimaHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getTimaStatus() - Tima Status : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    return v4

    :cond_46
    :try_start_46
    const-string/jumbo v8, "FIPS3.0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    if-eqz v3, :cond_59

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I

    move-result v4

    goto :goto_1b

    :cond_57
    const/4 v4, -0x1

    goto :goto_1b

    :cond_59
    const/4 v4, -0x1

    goto :goto_1b

    :cond_5b
    const-string/jumbo v5, "TimaHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_77} :catch_78
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_77} :catch_8a
    .catchall {:try_start_46 .. :try_end_77} :catchall_9c

    goto :goto_1b

    :catch_78
    move-exception v0

    :try_start_79
    const-string/jumbo v5, "TimaHelper"

    const-string/jumbo v8, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;
    :try_end_85
    .catchall {:try_start_79 .. :try_end_85} :catchall_9c

    move-result-object v2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    :catch_8a
    move-exception v1

    :try_start_8b
    const-string/jumbo v5, "TimaHelper"

    const-string/jumbo v8, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_9c

    move-result-object v2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    :catchall_9c
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getTimaVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isFipsAvilable()Z
    .registers 2

    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v0

    return v0
.end method

.method public isTimaAvailable()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/pm/TimaHelper;->getTimaStatus()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public migrateToFips30(I)Z
    .registers 18

    const-string/jumbo v11, "TimaHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "migrateToFips30 - Migrate all keys in Tima 3.0 KS to fips certificated... "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x4

    new-array v4, v11, [Ljava/lang/String;

    sget-object v11, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWD:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v4, v12

    sget-object v11, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWDHINT:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v11, v4, v12

    sget-object v11, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_PWD_RESET_TOKEN:Ljava/lang/String;

    const/4 v12, 0x2

    aput-object v11, v4, v12

    sget-object v11, Lcom/android/server/pm/TimaHelper;->ALIAS_PERSONA_FS:Ljava/lang/String;

    const/4 v12, 0x3

    aput-object v11, v4, v12

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    :try_start_37
    const-string/jumbo v11, "TIMAKeyStore"

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string/jumbo v11, "FipsTimaKeyStore"

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v11, 0x0

    array-length v12, v4

    :goto_4f
    if-ge v11, v12, :cond_cb

    aget-object v5, v4, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e9

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/TimaHelper;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v13

    invoke-virtual {v9, v1, v13}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v7

    check-cast v7, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v7, :cond_a5

    const-string/jumbo v13, "TimaHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Found key : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " from keystore"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/TimaHelper;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v13

    invoke-virtual {v8, v1, v7, v13}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    add-int/lit8 v6, v6, 0x1

    :goto_a2
    add-int/lit8 v11, v11, 0x1

    goto :goto_4f

    :cond_a5
    const-string/jumbo v13, "TimaHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to get a key : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " from keystore"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/security/KeyStoreException; {:try_start_37 .. :try_end_c6} :catch_c7
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_37 .. :try_end_c6} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_c6} :catch_10b

    goto :goto_a2

    :catch_c7
    move-exception v3

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    :cond_cb
    :goto_cb
    const-string/jumbo v11, "TimaHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Migration hit count : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v6, :cond_110

    const/4 v10, 0x1

    :goto_e8
    return v10

    :cond_e9
    :try_start_e9
    const-string/jumbo v13, "TimaHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Key not found : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " from keystore"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catch Ljava/security/KeyStoreException; {:try_start_e9 .. :try_end_10a} :catch_c7
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_e9 .. :try_end_10a} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_10a} :catch_10b

    goto :goto_a2

    :catch_10b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_cb

    :cond_110
    const/4 v10, 0x0

    goto :goto_e8
.end method

.method public setEntry(ILjava/lang/String;[B)Z
    .registers 14

    const/4 v3, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setEntry("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/pm/TimaHelper;->dump(Ljava/lang/String;)V

    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/TimaHelper;->checkTimaStatus(I)Z
    :try_end_22
    .catch Lcom/android/server/pm/TimaException; {:try_start_1f .. :try_end_22} :catch_80

    move-result v7

    if-eqz v7, :cond_4a

    const/4 v2, 0x0

    :try_start_26
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v7, ""

    invoke-direct {v4, p3, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v5, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v5, v4}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/TimaHelper;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v7

    invoke-virtual {v2, p2, v5, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_3e
    .catch Ljava/security/KeyStoreException; {:try_start_26 .. :try_end_3e} :catch_83
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3e} :catch_70
    .catchall {:try_start_26 .. :try_end_3e} :catchall_93

    const/4 v3, 0x1

    if-nez v2, :cond_4a

    :try_start_41
    const-string/jumbo v7, "TimaHelper"

    const-string/jumbo v8, "setEntry() - Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Lcom/android/server/pm/TimaException; {:try_start_41 .. :try_end_4a} :catch_80

    :cond_4a
    :goto_4a
    const-string/jumbo v7, "TimaHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setEntry("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "), result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_70
    move-exception v0

    :try_start_71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_93

    if-nez v2, :cond_4a

    :try_start_76
    const-string/jumbo v7, "TimaHelper"

    const-string/jumbo v8, "setEntry() - Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Lcom/android/server/pm/TimaException; {:try_start_76 .. :try_end_7f} :catch_80

    goto :goto_4a

    :catch_80
    move-exception v6

    const/4 v7, 0x0

    return v7

    :catch_83
    move-exception v1

    :try_start_84
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_93

    if-nez v2, :cond_4a

    :try_start_89
    const-string/jumbo v7, "TimaHelper"

    const-string/jumbo v8, "setEntry() - Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :catchall_93
    move-exception v7

    if-nez v2, :cond_9f

    const-string/jumbo v8, "TimaHelper"

    const-string/jumbo v9, "setEntry() - Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    throw v7
    :try_end_a0
    .catch Lcom/android/server/pm/TimaException; {:try_start_89 .. :try_end_a0} :catch_80
.end method

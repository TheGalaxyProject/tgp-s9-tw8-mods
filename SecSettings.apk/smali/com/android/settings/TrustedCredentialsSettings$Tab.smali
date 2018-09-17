.class final enum Lcom/android/settings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field private static final synthetic -com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

.field public static final enum SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mContentView:I

.field private final mLabel:I

.field private final mProgress:I

.field private final mSwitch:Z

.field private final mTag:Ljava/lang/String;

.field private final mTextView:I

.field private final mView:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mContentView:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTextView:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    return v0
.end method

.method private static synthetic -getcom-android-settings-TrustedCredentialsSettings$TabSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->values()[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_25

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_23

    :goto_20
    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-com-android-settings-TrustedCredentialsSettings$TabSwitchesValues:[I

    return-object v0

    :catch_23
    move-exception v1

    goto :goto_20

    :catch_25
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 16

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string/jumbo v1, "SYSTEM"

    const-string/jumbo v3, "system"

    const v4, 0x7f121c13

    const v5, 0x7f0a0888

    const v6, 0x7f0a0886

    const v7, 0x7f0a0883

    const v9, 0x7f0a0889

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZI)V

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    new-instance v6, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string/jumbo v7, "USER"

    const-string/jumbo v9, "user"

    const v10, 0x7f121c15

    const v11, 0x7f0a0920

    const v12, 0x7f0a091e

    const v13, 0x7f0a0913

    const v15, 0x7f0a0921

    move v14, v2

    invoke-direct/range {v6 .. v15}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIZI)V

    sput-object v6, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIZI)V
    .registers 10

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    iput p5, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I

    iput p6, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    iput p7, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mContentView:I

    iput-boolean p8, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    iput p9, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTextView:I

    return-void
.end method

.method private deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-getcom-android-settings-TrustedCredentialsSettings$TabSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_13
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :pswitch_1a
    const/4 v0, 0x0

    return v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1a
    .end packed-switch
.end method

.method private getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/IKeyChainService;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->-getcom-android-settings-TrustedCredentialsSettings$TabSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_13
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_1c
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1c
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .registers 2

    const-class v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .registers 1

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

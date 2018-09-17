.class public Lcom/android/settings/UCSCryptKeeperTask;
.super Landroid/os/AsyncTask;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UCSCryptKeeperTask$1;,
        Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;,
        Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;,
        Lcom/android/settings/UCSCryptKeeperTask$StateMachine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static mCSName:Ljava/lang/String;

.field private static mFirstTime:Z

.field private static mPasswordMaxLength:I

.field private static mPasswordMinLength:I

.field private static mPukMaxLength:I

.field private static mPukMinLength:I

.field private static mSavedPassword:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCryptKeeperDescription:Landroid/widget/TextView;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mEnabledWrap:I

.field private mFieldLayout:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIsEncrypt:Z

.field private mIsPukState:Z

.field mKeyguardProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

.field mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

.field private mOdeUCMEnabled:Z

.field private mParentActivity:Lcom/android/settings/CryptKeeper;

.field private mPasswordEntry:Landroid/widget/EditText;

.field protected mPinText:Ljava/lang/String;

.field protected mPukText:Ljava/lang/String;

.field protected mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mStatusTextView:Landroid/widget/TextView;

.field private mUri:Ljava/lang/String;

.field owner_info:Ljava/lang/String;

.field passwordType:I

.field ucsEditListener:Landroid/widget/TextView$OnEditorActionListener;


# direct methods
.method static synthetic -get0(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/UCSCryptKeeperTask;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/UCSCryptKeeperTask;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/UCSCryptKeeperTask;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/UCSCryptKeeperTask;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/UCSCryptKeeperTask;)Lcom/android/settings/CryptKeeper;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get7()I
    .registers 1

    sget v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic -get8()I
    .registers 1

    sget v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    return v0
.end method

.method static synthetic -get9()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/os/storage/IStorageManager;
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/UCSCryptKeeperTask;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->beginAttempt()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/UCSCryptKeeperTask;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->fakeUnlockAttempt()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/UCSCryptKeeperTask;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->handleBadAttemptUCS([I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/UCSCryptKeeperTask;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/UCSCryptKeeperTask;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->unlockUCSPUK()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/UCSCryptKeeperTask;->mFirstTime:Z

    sput v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    sput v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    sput v1, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    sput v1, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZIZ)V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->passwordType:I

    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-direct {v0, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    iput-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    iput-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const v0, 0x7f121c6d

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;

    iput-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeUCMEnabled:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$1;

    invoke-direct {v0, p0}, Lcom/android/settings/UCSCryptKeeperTask$1;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->ucsEditListener:Landroid/widget/TextView$OnEditorActionListener;

    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p2, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object p3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    const v0, 0x7f0a02be

    invoke-virtual {p2, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;

    const-string/jumbo v0, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    iput p5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I

    invoke-static {}, Lcom/samsung/android/settings/EFSProperties;->loadODEConfig()Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    invoke-static {}, Lcom/samsung/android/settings/EFSProperties;->loadKeyguardConfig()Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    iput-boolean p6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeUCMEnabled:Z

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_fa

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    iget-object v1, v1, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->csName:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->pinMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->pinMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->pukMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/samsung/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/samsung/android/settings/EFSProperties$ODEProperties;->pukMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    const-string/jumbo v0, "UCSCryptKeeperTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ODE Properties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ec
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusBar:Landroid/app/StatusBarManager;

    return-void

    :cond_fa
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    if-eqz v0, :cond_173

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    iget-object v1, v1, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->csName:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    iget v0, v0, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->pinMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    iget v0, v0, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->pinMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    iget v0, v0, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->pukMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mKeyguardProp:Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;

    iget v0, v0, Lcom/samsung/android/settings/EFSProperties$KeyguardProperties;->pukMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    const-string/jumbo v0, "UCSCryptKeeperTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Keyguard Properties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ec

    :cond_173
    const-string/jumbo v0, "UCSCryptKeeperTask"

    const-string/jumbo v1, "Failed to get both properties"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ec
.end method

.method private beginAttempt()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f0a080f

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1205ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private dipToPixel(I)I
    .registers 5

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private fakeUnlockAttempt()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f121c66

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_42

    invoke-virtual {p0, v4}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/UCSCryptKeeperTask$5;

    invoke-direct {v1, p0}, Lcom/android/settings/UCSCryptKeeperTask$5;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_42
    return-void
.end method

.method private getStorageManager()Landroid/os/storage/IStorageManager;
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    :cond_f
    return-object v2
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttemptUCS([I)V
    .registers 9

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1e

    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    new-array v2, v4, [I

    invoke-virtual {v1, v2}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset([I)V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getWrongPasswordStringId()I

    move-result v1

    invoke-virtual {p0, v1, v6}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_1e
    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    if-eqz v1, :cond_75

    aget v1, p1, v5

    const v2, 0xfffe

    if-ne v1, v2, :cond_60

    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v1, :cond_59

    const v1, 0x7f121c64    # 1.942147E38f

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    :goto_33
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_4c
    sget-object v1, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v2, p1, v5

    invoke-direct {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    const-string/jumbo v1, "NONE"

    sput-object v1, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    :goto_58
    return-void

    :cond_59
    const v1, 0x7f121c63

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_33

    :cond_60
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    new-array v2, v4, [I

    invoke-virtual {v1, v2}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset([I)V

    invoke-virtual {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getWrongPukStringId()I

    move-result v1

    aget v2, p1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_33

    :cond_75
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_8e
    aget v1, p1, v4

    const v2, 0xffef

    if-ne v1, v2, :cond_af

    iput-boolean v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    new-array v2, v3, [I

    aget v3, p1, v3

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset([I)V

    :goto_a2
    sget-object v1, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v2, p1, v5

    invoke-direct {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    const-string/jumbo v1, "NONE"

    sput-object v1, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    goto :goto_58

    :cond_af
    aget v1, p1, v5

    const v2, 0xfffe

    if-ne v1, v2, :cond_c8

    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v1, :cond_c1

    const v1, 0x7f121c64    # 1.942147E38f

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_a2

    :cond_c1
    const v1, 0x7f121c63

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_a2

    :cond_c8
    aget v1, p1, v4

    if-ne v1, v6, :cond_dc

    aget v1, p1, v3

    if-ne v1, v6, :cond_dc

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    aget v2, p1, v5

    invoke-static {v1, v2}, Lcom/samsung/android/settings/UCMHelpUtils;->getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_a2

    :cond_dc
    invoke-virtual {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getWrongPasswordStringId()I

    move-result v1

    aget v2, p1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_a2
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .registers 15

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    if-le v2, v9, :cond_1a

    return v9

    :cond_1a
    invoke-virtual {p1, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_27

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_27
    const/4 v0, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2c
    :goto_2c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_41

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_41
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v5, v11, v0

    if-gtz v5, :cond_4d

    if-eqz p2, :cond_b

    if-le v0, v9, :cond_b

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_50
    if-gt v2, v9, :cond_5d

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_5e

    :cond_5d
    :goto_5d
    return v9

    :cond_5e
    move v9, v10

    goto :goto_5d
.end method

.method private isEmergencyCallCapable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .registers 5

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_12
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.phone.EmergencyDialer.LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1a
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/UCSCryptKeeperTask;->setBackFunctionality(Z)V

    :try_start_23
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_28} :catch_32

    :goto_28
    return-void

    :cond_29
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    :catch_32
    move-exception v0

    const-string/jumbo v2, "UCSCryptKeeperTask"

    const-string/jumbo v3, "Activity Not Found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_28
.end method

.method private passwordEntryInitForUCS()V
    .registers 15

    const/16 v13, 0xb4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v7, 0x7f0a0614

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v7, 0x7f0a0003

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v6, :cond_99

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->ucsEditListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    sget v6, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    if-nez v6, :cond_3d

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/high16 v7, 0x60000

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    sput v6, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    :cond_3d
    sget v6, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    sget v7, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    if-le v6, v7, :cond_165

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    new-array v7, v11, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    sget v9, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_53
    new-instance v5, Lcom/android/settings/UCSCryptKeeperTask$2;

    invoke-direct {v5, p0}, Lcom/android/settings/UCSCryptKeeperTask$2;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_7f

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_7f

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_7f

    invoke-direct {p0, v13}, Lcom/android/settings/UCSCryptKeeperTask;->dipToPixel(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-direct {p0, v13}, Lcom/android/settings/UCSCryptKeeperTask;->dipToPixel(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7f
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_99
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v6

    if-nez v6, :cond_bc

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v7, 0x7f0a02be

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_bc

    const-string/jumbo v6, "UCSCryptKeeperTask"

    const-string/jumbo v7, "Removing the emergency Call button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_bc
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v7, 0x7f0a0875

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v7, "input_method"

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_e3

    invoke-direct {p0, v2, v10}, Lcom/android/settings/UCSCryptKeeperTask;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v6

    if-eqz v6, :cond_e3

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    new-instance v6, Lcom/android/settings/UCSCryptKeeperTask$3;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/UCSCryptKeeperTask$3;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e3
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    iget-object v6, v6, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v6, :cond_113

    const-string/jumbo v6, "UCSCryptKeeperTask"

    const-string/jumbo v7, "Acquiring wakelock."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v7, "power"

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    if-eqz v4, :cond_113

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string/jumbo v7, "UCSCryptKeeperTask"

    const/16 v8, 0x1a

    invoke-virtual {v4, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    iget-object v6, v6, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_113
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/UCSCryptKeeperTask$4;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/UCSCryptKeeperTask$4;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v6, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_149

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v6, :cond_149

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    sget-object v7, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_149
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->updateEmergencyCallButtonState()V

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v6, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x480000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    return-void

    :cond_165
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    new-array v7, v11, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    sget v9, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_53
.end method

.method private final setBackFunctionality(Z)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_9
.end method

.method private setMessageInUcsInfo(Ljava/lang/String;I)V
    .registers 10

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    if-eqz v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    if-eqz p1, :cond_48

    const-string/jumbo v1, "NONE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_48
    if-eqz p2, :cond_50

    const/16 v1, 0x20

    if-eq p2, v1, :cond_50

    const/16 v1, 0x21

    :cond_50
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f0a095d

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private takeEmergencyCallAction()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    :goto_e
    return-void

    :cond_f
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->launchEmergencyDialer()V

    goto :goto_e
.end method

.method private unlockUCSPUK()V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_c
    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v0, :cond_22

    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_21
    return-void

    :cond_22
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_21
.end method

.method private updateEmergencyCallButtonState()V
    .registers 9

    const/16 v7, 0x8

    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v6, 0x7f0a02be

    invoke-virtual {v5, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v6, 0x7f0a0002

    invoke-virtual {v5, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1c

    if-nez v3, :cond_1d

    :cond_1c
    return-void

    :cond_1d
    const-string/jumbo v0, ""

    :try_start_20
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_59

    move-result-object v0

    :goto_2b
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->isEmergencyCallCapable()Z

    move-result v5

    if-eqz v5, :cond_64

    const-string/jumbo v5, "Softphone"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_64

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v5, Lcom/android/settings/UCSCryptKeeperTask$6;

    invoke-direct {v5, p0}, Lcom/android/settings/UCSCryptKeeperTask$6;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v5

    if-eqz v5, :cond_6b

    const v4, 0x7f1206bf

    :goto_55
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    return-void

    :catch_59
    move-exception v1

    const-string/jumbo v5, "UCSCryptKeeperTask"

    const-string/jumbo v6, "Failed to get mdm type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_64
    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_6b
    const v4, 0x7f1206be

    goto :goto_55
.end method


# virtual methods
.method protected checkPin()Z
    .registers 3

    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    if-lt v0, v1, :cond_14

    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    if-gt v0, v1, :cond_14

    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    const/4 v1, 0x1

    return v1

    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method protected checkPuk()Z
    .registers 2

    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public confirmPin()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    const/4 v5, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-nez v2, :cond_1a

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v2

    iput v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->passwordType:I

    const-string/jumbo v2, "OwnerInfo"

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->owner_info:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-object v5

    :catch_1b
    move-exception v0

    const-string/jumbo v2, "UCSCryptKeeperTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;
    .registers 10

    const/4 v6, 0x0

    const/4 v4, 0x1

    move v1, p2

    if-le p2, v4, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f120eb8

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    return-object v0

    :cond_3c
    if-eq p2, v4, :cond_40

    if-nez p2, :cond_77

    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f120eb7

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_77
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b
.end method

.method public getWrongPasswordStringId()I
    .registers 2

    const v0, 0x7f1206c3

    return v0
.end method

.method public getWrongPukStringId()I
    .registers 2

    const v0, 0x7f121c6a

    return v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v6, 0x7f0d009e

    invoke-virtual {v5, v6}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    const-string/jumbo v4, ""

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    const v5, 0x7f121c6d

    iput v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->passwordEntryInitForUCS()V

    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_20
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v6, 0x7f0a080f

    invoke-virtual {v5, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const/4 v3, 0x0

    sget-boolean v5, Lcom/android/settings/UCSCryptKeeperTask;->mFirstTime:Z

    if-eqz v5, :cond_b7

    const/4 v1, 0x0

    :goto_3a
    const/16 v5, 0x1e

    if-ge v1, v5, :cond_63

    invoke-static {v4}, Lcom/samsung/android/settings/UCMHelpUtils;->getStatus(Ljava/lang/String;)[I

    move-result-object v3

    const-string/jumbo v5, "UCSCryptKeeperTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v5, v3, v9

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a6

    :cond_63
    sput-boolean v9, Lcom/android/settings/UCSCryptKeeperTask;->mFirstTime:Z

    :goto_65
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v5, :cond_6e

    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_6e
    aget v5, v3, v9

    const/16 v6, 0x85

    if-ne v5, v6, :cond_76

    iput-boolean v8, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    :cond_76
    sget-object v5, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-direct {p0, v5, v6}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v6, 0x7f0a0605

    invoke-virtual {v5, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->owner_info:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSelected(Z)V

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    if-eqz v5, :cond_bc

    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    new-array v6, v8, [I

    aget v7, v3, v8

    aput v7, v6, v9

    invoke-virtual {v5, v6}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset([I)V

    :goto_a5
    return-void

    :cond_a6
    const/16 v5, 0x1d

    if-eq v1, v5, :cond_af

    const-wide/16 v6, 0x3e8

    :try_start_ac
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_af
    .catch Ljava/lang/InterruptedException; {:try_start_ac .. :try_end_af} :catch_b2

    :cond_af
    :goto_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :catch_b2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_af

    :cond_b7
    invoke-static {v4}, Lcom/samsung/android/settings/UCMHelpUtils;->getStatus(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_65

    :cond_bc
    iget-boolean v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v5, :cond_cf

    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    aget v6, v3, v8

    const v7, 0x7f121c67

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a5

    :cond_cf
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    aget v6, v3, v8

    const v7, 0x7f120983

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a5
.end method

.method protected resetPasswordText(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method protected setHintOrMessageText(I)V
    .registers 7

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x7f121c6c

    if-ne p1, v0, :cond_28

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    :goto_27
    return-void

    :cond_28
    const v0, 0x7f121c66

    if-ne p1, v0, :cond_4d

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_4d
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

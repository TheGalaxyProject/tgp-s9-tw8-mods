.class public Lcom/android/settings/datausage/CellDataPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "CellDataPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CellDataPreference$1;,
        Lcom/android/settings/datausage/CellDataPreference$6;,
        Lcom/android/settings/datausage/CellDataPreference$7;,
        Lcom/android/settings/datausage/CellDataPreference$CellDataState;,
        Lcom/android/settings/datausage/CellDataPreference$DataStateListener;
    }
.end annotation


# static fields
.field private static sMobileDataOnOff:I


# instance fields
.field public mChecked:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field public mEnableDialog:Z

.field private mIsVolteCall:Z

.field private final mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field public mMultiSimDialog:Z

.field private mRootView:Landroid/support/v7/preference/PreferenceViewHolder;

.field public mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSupportDisableDialog:Z

.field private mSupportEnableDialog:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/CellDataPreference;)Landroid/telephony/SubscriptionManager;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/CellDataPreference;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->disableDataForOtherSubscriptions(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/CellDataPreference;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/datausage/CellDataPreference;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateChecked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/datausage/CellDataPreference;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    const v0, 0x7f0401ce

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    iput-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsVolteCall:Z

    new-instance v0, Lcom/android/settings/datausage/CellDataPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/CellDataPreference$1;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    iput-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMobileDataEnableDialog()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSupportEnableDialog:Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMobileDataDisableDialog()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSupportDisableDialog:Z

    return-void
.end method

.method private disableDataForOtherSubscriptions(I)V
    .registers 8

    iget-object v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-eq v3, p1, :cond_c

    iget-object v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_c

    :cond_29
    return-void
.end method

.method private setChecked(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->notifyChanged()V

    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .registers 5

    const-string/jumbo v0, "CellDataPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileDataEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setChecked(Z)V

    return-void
.end method

.method private showDisableDialog()V
    .registers 9

    const v7, 0x7f120708

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/datausage/CellDataPreference$4;

    invoke-direct {v5, p0}, Lcom/android/settings/datausage/CellDataPreference$4;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    const v6, 0x7f120759

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/settings/datausage/CellDataPreference$5;

    invoke-direct {v4, p0}, Lcom/android/settings/datausage/CellDataPreference$5;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1211b0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v4, "VZW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-nez v4, :cond_49

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_4f

    :cond_49
    const v4, 0x7f12071b

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_4f
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v4

    if-eqz v4, :cond_69

    :cond_5b
    const v4, 0x7f120710

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_61
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_69
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_83

    const v4, 0x7f12070d

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_61

    :cond_83
    const v4, 0x7f12070e

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_61

    :cond_8a
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-eqz v4, :cond_97

    const v4, 0x7f12070f

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_61

    :cond_97
    const-string/jumbo v4, "VZW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c5

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoLTEVideoCallSupportedSIM(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1211ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_b5
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_61

    :cond_b9
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1211af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_b5

    :cond_c5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d6

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_61

    :cond_d6
    const-string/jumbo v4, "DCM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e7

    const v4, 0x7f12070c

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_61

    :cond_e7
    const v4, 0x7f1211ad

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_61
.end method

.method private showEnableDialog()V
    .registers 6

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12071b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/datausage/CellDataPreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings/datausage/CellDataPreference$2;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/settings/datausage/CellDataPreference$3;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/CellDataPreference$3;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v2

    if-eqz v2, :cond_3f

    :cond_31
    const v2, 0x7f120720

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_37
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_3f
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v2

    if-eqz v2, :cond_4c

    const v2, 0x7f12071e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_37

    :cond_4c
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_59

    const v2, 0x7f12071f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_37

    :cond_59
    const v2, 0x7f12071d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_37
.end method

.method private updateChecked()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setChecked(Z)V

    return-void
.end method

.method private updateEnabled()V
    .registers 8

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_86

    const/4 v1, 0x1

    :goto_14
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/enterprise/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v3

    xor-int/lit8 v2, v3, 0x1

    :cond_25
    const-string/jumbo v3, "CellDataPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEnabled() : isAirplaneMode :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  mIsVolteCall"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsVolteCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  isPolicyRestrict"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "CellDataPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEnabled() : setEnabled "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_88

    iget-boolean v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsVolteCall:Z

    if-nez v3, :cond_88

    move v3, v2

    :goto_6d
    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_8a

    iget-boolean v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsVolteCall:Z

    if-nez v3, :cond_8a

    :goto_80
    xor-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/CellDataPreference;->setEnabled(Z)V

    return-void

    :cond_86
    const/4 v1, 0x0

    goto :goto_14

    :cond_88
    move v3, v4

    goto :goto_6d

    :cond_8a
    move v2, v4

    goto :goto_80
.end method


# virtual methods
.method public getView()Landroid/support/v7/preference/PreferenceViewHolder;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mRootView:Landroid/support/v7/preference/PreferenceViewHolder;

    return-object v0
.end method

.method public onAttached()V
    .registers 5

    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->onAttached()V

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x1020040

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_17
    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mRootView:Landroid/support/v7/preference/PreferenceViewHolder;

    return-void
.end method

.method public onDetached()V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->onDetached()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    invoke-virtual {v0}, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/SecPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mChecked:Z

    iput-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    iget-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mMultiSimDialog:Z

    iput-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3f

    iget v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mSubId:I

    iput v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/CellDataPreference;->setKey(Ljava/lang/String;)V

    :cond_3f
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    new-instance v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/CellDataPreference$CellDataState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    iput-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mChecked:Z

    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    iput-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mMultiSimDialog:Z

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    iput v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mSubId:I

    return-object v0
.end method

.method public performClick()V
    .registers 9

    const v7, 0x7f0b0167

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    xor-int/lit8 v5, v5, 0x1

    const/16 v6, 0xb2

    invoke-static {v2, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/settings/datausage/CellDataPreference;->sMobileDataOnOff:I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0160

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b015c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-nez v2, :cond_75

    move v2, v3

    :goto_4d
    invoke-static {v5, v1, v0, v2}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    :goto_50
    const-string/jumbo v2, "CellDataPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "performClick() isEnabled() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_96

    return-void

    :cond_75
    move v2, v4

    goto :goto_4d

    :cond_77
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-nez v2, :cond_94

    move v2, v3

    :goto_8c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_50

    :cond_94
    move v2, v4

    goto :goto_8c

    :cond_96
    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-eqz v2, :cond_a8

    iput-boolean v4, p0, Lcom/android/settings/datausage/CellDataPreference;->mEnableDialog:Z

    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSupportDisableDialog:Z

    if-eqz v2, :cond_a4

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->showDisableDialog()V

    :goto_a3
    return-void

    :cond_a4
    invoke-direct {p0, v4}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    goto :goto_a3

    :cond_a8
    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSupportEnableDialog:Z

    if-eqz v2, :cond_b2

    iput-boolean v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mEnableDialog:Z

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->showEnableDialog()V

    goto :goto_a3

    :cond_b2
    invoke-direct {p0, v3}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    goto :goto_a3
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .registers 6

    const/4 v1, -0x1

    if-ne p2, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CellDataPreference needs a SubscriptionInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    if-ne v0, v1, :cond_3e

    iput p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setKey(Ljava/lang/String;)V

    :cond_3e
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateChecked()V

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateEnabled()V

    const v0, 0x7f12071c

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setSummary(I)V

    return-void
.end method

.method public setVolteCallState(Z)V
    .registers 5

    const-string/jumbo v0, "CellDataPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVolteCallState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsVolteCall:Z

    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateEnabled()V

    return-void
.end method

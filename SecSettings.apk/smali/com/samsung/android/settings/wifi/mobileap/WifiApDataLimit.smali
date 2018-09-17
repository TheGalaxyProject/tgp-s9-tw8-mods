.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;
.super Landroid/support/v7/preference/Preference;
.source "WifiApDataLimit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final GB:Ljava/math/BigDecimal;

.field private final KB:Ljava/math/BigDecimal;

.field private final MB:Ljava/math/BigDecimal;

.field private apDataSummary:Landroid/widget/TextView;

.field private final mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mSummary:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->GB:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->KB:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Ljava/math/BigDecimal;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->MB:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->KB:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->MB:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x40000000

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->GB:Ljava/math/BigDecimal;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "WifiApDataLimit"

    const-string/jumbo v1, "create WifiApDataLimit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->updateApMobileDataLimit()V

    const v0, 0x7f0d0245

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120709

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isMobileApON()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_f

    const-string/jumbo v1, "WifiApDataLimit"

    const-string/jumbo v2, "Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    const/16 v1, 0xd

    if-eq v0, v1, :cond_25

    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    :cond_25
    const/4 v1, 0x1

    return v1

    :cond_27
    return v3
.end method


# virtual methods
.method public declared-synchronized getApDataLimitSummary()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->DBG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "WifiApDataLimit"

    const-string/jumbo v1, "getApDataLimitSummary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->updateUsageValue()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->isMobileApON()Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getMobileDataLimited()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getUsageValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getUsageUnit()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getLimitedValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getLimitedUnit()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const v2, 0x7f121f64

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mSummary:Ljava/lang/String;

    :goto_57
    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->DBG:Z

    if-eqz v0, :cond_77

    const-string/jumbo v0, "WifiApDataLimit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSummary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mSummary:Ljava/lang/String;
    :try_end_79
    .catchall {:try_start_1 .. :try_end_79} :catchall_a0

    monitor-exit p0

    return-object v0

    :cond_7b
    :try_start_7b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getUsageValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getUsageUnit()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f121fb2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mSummary:Ljava/lang/String;
    :try_end_9f
    .catchall {:try_start_7b .. :try_end_9f} :catchall_a0

    goto :goto_57

    :catchall_a0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a3
    :try_start_a3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getMobileDataLimited()Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getLimitedValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getLimitedUnit()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f121f63

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mSummary:Ljava/lang/String;

    goto :goto_57

    :cond_d0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121eea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mSummary:Ljava/lang/String;
    :try_end_df
    .catchall {:try_start_a3 .. :try_end_df} :catchall_a0

    goto/16 :goto_57
.end method

.method public getApDataLimitValue()Ljava/lang/String;
    .registers 6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_ap_mobile_data_limit_value"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->MB:Ljava/math/BigDecimal;

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_21
    const-string/jumbo v2, "WifiApDataLimit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getApDataLimitValue limit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isApDataLimited()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->getMobileDataLimited()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 4

    const-string/jumbo v0, "WifiApDataLimit"

    const-string/jumbo v1, "onBindViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0980

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a054f

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->apDataSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->apDataSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->apDataSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->getApDataLimitSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_35
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3e

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->getInputLimitData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->setLimitValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x4d

    iput v3, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "feature"

    const-string/jumbo v4, "MHDL"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->notifyHierarchyChanged()V

    return-void

    :cond_3e
    const/4 v3, -0x2

    if-ne p2, v3, :cond_3a

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mApMobileData:Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit$ApMobileData;->setMobileDataUnLimited()V

    goto :goto_3a
.end method

.method public showDialog()V
    .registers 3

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public updateApDataLimitSummary()V
    .registers 3

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "WifiApDataLimit"

    const-string/jumbo v1, "updateApDataLimitSummary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDataLimit;->notifyChanged()V

    return-void
.end method

.class public Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;
.super Ljava/lang/Object;
.source "EnterprisePrivacyFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mCm:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

.field private final mContext:Landroid/content/Context;

.field private final mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

.field private final mPm:Lcom/android/settings/applications/PackageManagerWrapper;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Lcom/android/settings/applications/PackageManagerWrapper;Landroid/os/UserManager;Lcom/android/settings/vpn2/ConnectivityManagerWrapper;Landroid/content/res/Resources;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    iput-object p3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    iput-object p4, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    iput-object p5, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

    iput-object p6, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private getManagedProfileUserId()I
    .registers 5

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    sget v3, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    return v2

    :cond_21
    const/16 v2, -0x2710

    return v2
.end method


# virtual methods
.method public getDeviceOwnerDisclosure()Ljava/lang/CharSequence;
    .registers 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->hasDeviceOwner()Z

    move-result v2

    if-nez v2, :cond_9

    return-object v3

    :cond_9
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_47

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const v4, 0x7f1208bb

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_27
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1208ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1208b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;

    iget-object v4, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    return-object v0

    :cond_47
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f1208b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_27
.end method

.method public getDeviceOwnerOrganizationName()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v2

    :cond_a
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImeLabelIfOwnerSet()Ljava/lang/String;
    .registers 7

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->isCurrentInputMethodSetByOwner()Z

    move-result v2

    if-nez v2, :cond_a

    return-object v5

    :cond_a
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "default_input_method"

    sget v4, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    return-object v5

    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    sget v3, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4, v3}, Lcom/android/settings/applications/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v3}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_32} :catch_34

    move-result-object v2

    return-object v2

    :catch_34
    move-exception v0

    return-object v5
.end method

.method public getLastBugReportRequestTime()Ljava/util/Date;
    .registers 5

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getLastBugReportRequestTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    const/4 v2, 0x0

    :goto_d
    return-object v2

    :cond_e
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_d
.end method

.method public getLastNetworkLogRetrievalTime()Ljava/util/Date;
    .registers 5

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getLastNetworkLogRetrievalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    const/4 v2, 0x0

    :goto_d
    return-object v2

    :cond_e
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_d
.end method

.method public getLastSecurityLogRetrievalTime()Ljava/util/Date;
    .registers 5

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getLastSecurityLogRetrievalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    const/4 v2, 0x0

    :goto_d
    return-object v2

    :cond_e
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_d
.end method

.method public getMaximumFailedPasswordsBeforeWipeInCurrentUser()I
    .registers 4

    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    sget v2, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-interface {v1, v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    sget v2, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-interface {v1, v0, v2}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    return v1
.end method

.method public getMaximumFailedPasswordsBeforeWipeInManagedProfile()I
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v1

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_a

    return v3

    :cond_a
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2, v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_13

    return v3

    :cond_13
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v2, v0, v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    return v2
.end method

.method public getNumberOfActiveDeviceAdminsForCurrentUserAndManagedProfile()I
    .registers 10

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    sget v8, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v7, v8}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v4, :cond_d

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.knox.containercore"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.knox.securefolder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_54

    add-int/lit8 v1, v1, 0x1

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_57
    return v1
.end method

.method public getNumberOfOwnerInstalledCaCertsForCurrentUserAndManagedProfile()I
    .registers 7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    new-instance v4, Landroid/os/UserHandle;

    sget v5, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v3, v4}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, 0x0

    :cond_16
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v2

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_30

    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v3, v4}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    :cond_30
    return v1
.end method

.method public hasDeviceOwner()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    const-string/jumbo v2, "android.software.device_admin"

    invoke-interface {v1, v2}, Lcom/android/settings/applications/PackageManagerWrapper;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    :cond_d
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    invoke-interface {v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public isAlwaysOnVpnSetInCurrentUser()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

    sget v1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-static {v0, v1}, Lcom/android/settings/vpn2/VpnUtils;->isAlwaysOnVpnSet(Lcom/android/settings/vpn2/ConnectivityManagerWrapper;I)Z

    move-result v0

    return v0
.end method

.method public isAlwaysOnVpnSetInManagedProfile()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

    invoke-static {v1, v0}, Lcom/android/settings/vpn2/VpnUtils;->isAlwaysOnVpnSet(Lcom/android/settings/vpn2/ConnectivityManagerWrapper;I)Z

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isGlobalHttpProxySet()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

    invoke-interface {v0}, Lcom/android/settings/vpn2/ConnectivityManagerWrapper;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isInCompMode()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v1

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public isNetworkLoggingEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isSecurityLoggingEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

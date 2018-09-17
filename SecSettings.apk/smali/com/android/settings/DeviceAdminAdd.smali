.class public Lcom/android/settings/DeviceAdminAdd;
.super Landroid/app/Activity;
.source "DeviceAdminAdd.java"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgExpander:Landroid/widget/ImageView;

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field mAddingProfileOwner:Z

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminPoliciesInitialized:Z

.field mAdminWarning:Landroid/widget/TextView;

.field mAppOps:Landroid/app/AppOpsManager;

.field mCancelButton:Landroid/widget/Button;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

.field mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field mHandler:Landroid/os/Handler;

.field mIsCalledFromSupportDialog:Z

.field mProfileOwnerName:Ljava/lang/String;

.field mProfileOwnerWarning:Landroid/widget/TextView;

.field mRefreshing:Z

.field mSupportMessage:Landroid/widget/TextView;

.field private final mToken:Landroid/os/IBinder;

.field mUninstallButton:Landroid/widget/Button;

.field mUninstalling:Z

.field mWaitingForRemoveMsg:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/DeviceAdminAdd;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->hasBaseCantRemoveProfileRestriction()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/DeviceAdminAdd;Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/DeviceAdminAdd;->isManagedProfile(Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/DeviceAdminAdd;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->getAdminEnforcingCantRemoveProfile()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mUninstalling:Z

    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    return-void
.end method

.method private addDeviceAdminPolicies(Z)V
    .registers 11

    const/4 v8, 0x1

    iget-boolean v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPoliciesInitialized:Z

    if-nez v6, :cond_4b

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    if-eqz v1, :cond_3f

    iget v0, v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->description:I

    :goto_27
    if-eqz v1, :cond_42

    iget v2, v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->label:I

    :goto_2b
    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz p1, :cond_45

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_35
    invoke-static {p0, v7, v6, v8}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_17

    :cond_3f
    iget v0, v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->descriptionForSecondaryUsers:I

    goto :goto_27

    :cond_42
    iget v2, v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->labelForSecondaryUsers:I

    goto :goto_2b

    :cond_45
    const-string/jumbo v6, ""

    goto :goto_35

    :cond_49
    iput-boolean v8, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminPoliciesInitialized:Z

    :cond_4b
    return-void
.end method

.method private getAdminEnforcingCantRemoveProfile()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 3

    const-string/jumbo v0, "no_remove_managed_profile"

    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->getParentUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method

.method private getParentUserId()I
    .registers 3

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0
.end method

.method private hasBaseCantRemoveProfileRestriction()Z
    .registers 3

    const-string/jumbo v0, "no_remove_managed_profile"

    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->getParentUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isAdminUninstallable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isManagedProfile(Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;)Z
    .registers 5

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method


# virtual methods
.method addAndFinish()V
    .registers 7

    const/4 v5, -0x1

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/DeviceAdminAdd;->logSpecialPermissionChange(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const v3, 0x16059

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_30} :catch_49

    :cond_30
    :goto_30
    iget-boolean v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v2, :cond_45

    :try_start_34
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_45} :catch_7c

    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    return-void

    :catch_49
    move-exception v0

    const-string/jumbo v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception trying to activate admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {p0, v5}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    goto :goto_30

    :catch_7c
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    goto :goto_45
.end method

.method continueRemoveAction(Ljava/lang/CharSequence;)V
    .registers 6

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/settings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v2, :cond_6

    return-void

    :cond_6
    iput-boolean v3, p0, Lcom/android/settings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez p1, :cond_2d

    :try_start_a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_46

    :goto_11
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/DeviceAdminAdd;->logSpecialPermissionChange(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    :goto_2c
    return-void

    :cond_2d
    :try_start_2d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_44

    :goto_34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_2c

    :catch_44
    move-exception v1

    goto :goto_34

    :catch_46
    move-exception v1

    goto :goto_11
.end method

.method getEllipsizedLines()I
    .registers 4

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_19

    const/4 v1, 0x5

    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x2

    goto :goto_18
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_13

    const/16 v0, 0x2fe

    :goto_4
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, p0, v0, p2, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    return-void

    :cond_13
    const/16 v0, 0x2ff

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 34

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v29, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    const-string/jumbo v29, "enterprise_policy_new"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const-string/jumbo v29, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v29, "appops"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/AppOpsManager;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getFlags()I

    move-result v29

    const/high16 v30, 0x10000000

    and-int v29, v29, v30

    if-eqz v29, :cond_6a

    const-string/jumbo v29, "DeviceAdminAdd"

    const-string/jumbo v30, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    return-void

    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string/jumbo v30, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string/jumbo v30, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v28

    check-cast v28, Landroid/content/ComponentName;

    if-nez v28, :cond_f3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string/jumbo v30, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_ad
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_d1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_ad

    move-object/from16 v28, v7

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mUninstalling:Z

    :cond_d1
    if-nez v28, :cond_f3

    const-string/jumbo v29, "DeviceAdminAdd"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "No component specified in "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    return-void

    :cond_f3
    if-eqz v3, :cond_194

    const-string/jumbo v29, "android.app.action.SET_PROFILE_OWNER"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_194

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->setFinishOnTouchOutside(Z)V

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string/jumbo v30, "android.app.extra.PROFILE_OWNER_NAME"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13f

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_14c

    :cond_13f
    const-string/jumbo v29, "DeviceAdminAdd"

    const-string/jumbo v30, "Unknown or incorrect caller"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    return-void

    :cond_14c
    const/16 v29, 0x0

    :try_start_14e
    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x1

    if-nez v29, :cond_194

    const-string/jumbo v29, "DeviceAdminAdd"

    const-string/jumbo v30, "Cannot set a non-system app as a profile owner"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V
    :try_end_172
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14e .. :try_end_172} :catch_173

    return-void

    :catch_173
    move-exception v17

    const-string/jumbo v29, "DeviceAdminAdd"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Cannot find the package "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    return-void

    :cond_194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-object/from16 v29, v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_1a6
    :goto_1a6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1f4

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1a6

    :try_start_1c0
    new-instance v29, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :try_end_1d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c0 .. :try_end_1d5} :catch_1d6
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_1d5} :catch_1e5

    goto :goto_1a6

    :catch_1d6
    move-exception v13

    const-string/jumbo v29, "DeviceAdminAdd"

    const-string/jumbo v30, "Skipping proxy"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a6

    :catch_1e5
    move-exception v12

    const-string/jumbo v29, "DeviceAdminAdd"

    const-string/jumbo v30, "Skipping proxy"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a6

    :cond_1f4
    const/16 v29, 0x80

    :try_start_1f6
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1ff
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f6 .. :try_end_1ff} :catch_298

    move-result-object v4

    :goto_200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v29

    if-nez v29, :cond_32b

    new-instance v29, Landroid/content/Intent;

    const-string/jumbo v30, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v30, 0x8000

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2d3

    const/4 v9, 0x0

    :goto_228
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_22a
    if-ge v15, v9, :cond_26c

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_327

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_327

    :try_start_25e
    move-object/from16 v0, v27

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v10, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_26b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25e .. :try_end_26b} :catch_300
    .catch Ljava/io/IOException; {:try_start_25e .. :try_end_26b} :catch_2d9

    const/4 v14, 0x1

    :cond_26c
    :goto_26c
    if-nez v14, :cond_32b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-object/from16 v29, v0

    if-nez v29, :cond_32b

    const-string/jumbo v29, "DeviceAdminAdd"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Request to add invalid device admin: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    return-void

    :catch_298
    move-exception v11

    const-string/jumbo v29, "DeviceAdminAdd"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Unable to retrieve device policy "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-object/from16 v29, v0

    if-nez v29, :cond_2c7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    return-void

    :cond_2c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    goto/16 :goto_200

    :cond_2d3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    goto/16 :goto_228

    :catch_2d9
    move-exception v12

    const-string/jumbo v29, "DeviceAdminAdd"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Bad "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26c

    :catch_300
    move-exception v13

    const-string/jumbo v29, "DeviceAdminAdd"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Bad "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26c

    :cond_327
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_22a

    :cond_32b
    new-instance v27, Landroid/content/pm/ResolveInfo;

    invoke-direct/range {v27 .. v27}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object/from16 v0, v27

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :try_start_334
    new-instance v29, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :try_end_345
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_334 .. :try_end_345} :catch_3d1
    .catch Ljava/io/IOException; {:try_start_334 .. :try_end_345} :catch_3aa

    const-string/jumbo v29, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_44b

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v29

    if-eqz v29, :cond_44b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v29, v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v30

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v29

    if-eqz v29, :cond_3f8

    const-string/jumbo v29, "DeviceAdminAdd"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Requested admin is already being removed: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    return-void

    :catch_3aa
    move-exception v12

    const-string/jumbo v29, "DeviceAdminAdd"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Unable to retrieve device policy "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    return-void

    :catch_3d1
    move-exception v13

    const-string/jumbo v29, "DeviceAdminAdd"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Unable to retrieve device policy "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    return-void

    :cond_3f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v16

    const/4 v15, 0x0

    :goto_403
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v15, v0, :cond_433

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    move/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v29

    if-nez v29, :cond_448

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    :cond_433
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    move/from16 v29, v0

    if-nez v29, :cond_44b

    const/16 v29, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    return-void

    :cond_448
    add-int/lit8 v15, v15, 0x1

    goto :goto_403

    :cond_44b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    move/from16 v29, v0

    if-eqz v29, :cond_465

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/admin/DevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_465

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->addAndFinish()V

    return-void

    :cond_465
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string/jumbo v30, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    const v29, 0x7f0d0293

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->setContentView(I)V

    const v29, 0x7f0a0057

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    const v29, 0x7f0a0059

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    const v29, 0x7f0a0055

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const v29, 0x7f0a067e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    const v29, 0x7f0a004f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    const v29, 0x7f0a0050

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    new-instance v18, Lcom/android/settings/DeviceAdminAdd$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminAdd$1;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v29

    new-instance v30, Lcom/android/settings/DeviceAdminAdd$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminAdd$2;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual/range {v29 .. v30}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    const v29, 0x7f0a0060

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v29, 0x7f0a005a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    const v29, 0x7f0a005e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    const v29, 0x7f0a0150

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/Button;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/settings/DeviceAdminAdd$3;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminAdd$3;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v29, 0x7f0a0901

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/Button;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v29, v0

    new-instance v30, Lcom/android/settings/DeviceAdminAdd$4;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminAdd$4;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v29, 0x7f0a002c

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/Button;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v29, 0x7f0a06f9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v26

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    new-instance v29, Lcom/android/settings/DeviceAdminAdd$5;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceAdminAdd$5;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7

    packed-switch p1, :pswitch_data_2e

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    :pswitch_8
    const-string/jumbo v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/settings/DeviceAdminAdd$6;

    invoke-direct {v2, p0}, Lcom/android/settings/DeviceAdminAdd$6;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    const v3, 0x7f1208a6

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f12089f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onNavigateUp()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x2d

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    :try_start_1b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    goto :goto_22
.end method

.method protected onResume()V
    .registers 5

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->updateInterface()V

    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mToken:Landroid/os/IBinder;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    :cond_a
    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_2a

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_2f

    const v1, 0x108032c

    :goto_26
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2a
    const/4 v1, 0x0

    goto :goto_f

    :cond_2c
    const/16 v1, 0xf

    goto :goto_1a

    :cond_2f
    const v1, 0x108032b

    goto :goto_26
.end method

.method updateInterface()V
    .registers 14

    const v10, 0x7f0a06fa

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v7, 0x0

    invoke-virtual {p0, v10}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_2c
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_41} :catch_f0

    :goto_41
    iget-boolean v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v6, :cond_4a

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4a
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_f8

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5a
    iget-boolean v6, p0, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    if-nez v6, :cond_18a

    iget-boolean v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_18a

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_18a

    iput-boolean v7, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAdminRemovable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_104

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_87
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-direct {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->isManagedProfile(Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;)Z

    move-result v3

    if-eqz v4, :cond_10d

    if-eqz v3, :cond_10d

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v8, 0x7f120100

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v8, 0x7f121631

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(I)V

    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->getAdminEnforcingCantRemoveProfile()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->hasBaseCantRemoveProfileRestriction()Z

    move-result v2

    if-eqz v0, :cond_c6

    xor-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_c6

    invoke-virtual {p0, v10}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_c6
    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    if-nez v0, :cond_10b

    xor-int/lit8 v6, v2, 0x1

    :goto_cc
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_cf
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/app/admin/DevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_183

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_ef
    return-void

    :catch_f0
    move-exception v1

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_41

    :cond_f8
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5a

    :cond_104
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_87

    :cond_10b
    move v6, v7

    goto :goto_cc

    :cond_10d
    if-nez v4, :cond_121

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_142

    :cond_121
    if-eqz v4, :cond_139

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v8, 0x7f120101

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    :goto_12b
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v8, 0x7f121630

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(I)V

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_cf

    :cond_139
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v8, 0x7f1200fd

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_12b

    :cond_142
    invoke-direct {p0, v7}, Lcom/android/settings/DeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v7

    const v9, 0x7f1207ed

    invoke-virtual {p0, v9, v8}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f1207eb

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->setTitle(I)V

    iget-boolean v6, p0, Lcom/android/settings/DeviceAdminAdd;->mUninstalling:Z

    if-eqz v6, :cond_179

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v8, 0x7f12162d

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_cf

    :cond_179
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v8, 0x7f121630

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_cf

    :cond_183
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ef

    :cond_18a
    invoke-direct {p0, v12}, Lcom/android/settings/DeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    invoke-virtual {v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v7

    const v9, 0x7f1207ee

    invoke-virtual {p0, v9, v8}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v6, p0, Lcom/android/settings/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v6, :cond_1db

    const v6, 0x7f121563

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1bb
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v8, 0x7f1200e7

    invoke-virtual {p0, v8}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/DeviceAdminAdd;->isAdminUninstallable()Z

    move-result v6

    if-eqz v6, :cond_1d2

    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1d2
    iget-object v6, p0, Lcom/android/settings/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v12, p0, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    goto/16 :goto_ef

    :cond_1db
    const v6, 0x7f1207eb

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1bb
.end method

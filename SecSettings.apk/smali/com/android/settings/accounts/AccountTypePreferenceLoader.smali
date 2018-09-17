.class public Lcom/android/settings/accounts/AccountTypePreferenceLoader;
.super Ljava/lang/Object;
.source "AccountTypePreferenceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;
    }
.end annotation


# instance fields
.field private mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field private mFragment:Landroid/support/v14/preference/PreferenceFragment;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/support/v14/preference/PreferenceFragment;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/os/UserHandle;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iput-object p3, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method private addSSORetryPreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/content/Context;Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;)V
    .registers 10

    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->ssoAccountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->snsAccountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v4, v3

    if-lez v4, :cond_5c

    array-length v4, v1

    if-nez v4, :cond_5c

    iget-object v4, p3, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->ssoRetryAction:Ljava/lang/String;

    if-eqz v4, :cond_5c

    const-string/jumbo v4, "AccountTypePrefLoader"

    const-string/jumbo v5, "SSO retry menu added."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v4}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    iget-object v4, p3, Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;->ssoRetryAction:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "snsSSORetry"

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    const v5, 0x7f12165b

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    const v5, 0x7f120c48

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addItemFromInflater(Landroid/support/v7/preference/Preference;)V

    :cond_5c
    return-void
.end method

.method private isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 14

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v8, p3}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iget-object v8, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p1, p2, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_15

    return v7

    :cond_15
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :try_start_19
    iget-boolean v8, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v8, :cond_2d

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v8, :cond_22

    return v6

    :cond_22
    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v9, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2d

    return v6

    :cond_2d
    iget-object v8, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_38} :catch_3d

    if-ne v8, v9, :cond_3b

    :goto_3a
    return v6

    :cond_3b
    move v6, v7

    goto :goto_3a

    :catch_3d
    move-exception v2

    const-string/jumbo v6, "AccountTypePrefLoader"

    const-string/jumbo v8, "Intent considered unsafe due to exception."

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;
    .registers 29

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_15b

    const/4 v9, 0x0

    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v9

    if-eqz v9, :cond_1e8

    iget v0, v9, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    move/from16 v22, v0

    if-eqz v22, :cond_1e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    iget-object v0, v9, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v22, 0x7f130266

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v18, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->getClass()Ljava/lang/Class;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;-><init>(Ljava/lang/Class;Landroid/content/Context;I)V

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const/4 v13, 0x1

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v22

    iget v0, v9, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v8

    :goto_bd
    if-ge v12, v8, :cond_1cf

    invoke-virtual {v6, v12}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    instance-of v0, v5, Landroid/support/v7/preference/PreferenceCategory;

    move/from16 v22, v0

    if-eqz v22, :cond_103

    new-instance v20, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v22

    if-eqz v22, :cond_f0

    const v22, 0x7f0d01f8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setLayoutResource(I)V

    :cond_f0
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_100
    add-int/lit8 v12, v12, 0x1

    goto :goto_bd

    :cond_103
    instance-of v0, v5, Landroid/support/v7/preference/PreferenceScreen;

    move/from16 v22, v0

    if-eqz v22, :cond_15c

    new-instance v21, Landroid/support/v7/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const/16 v23, 0x0

    invoke-direct/range {v21 .. v23}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_13b} :catch_13c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_13b} :catch_1ac

    goto :goto_100

    :catch_13c
    move-exception v10

    const-string/jumbo v22, "AccountTypePrefLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Couldn\'t load preferences.xml file from "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v9, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15b
    :goto_15b
    return-object v15

    :cond_15c
    :try_start_15c
    instance-of v0, v5, Landroid/support/v7/preference/Preference;

    move/from16 v22, v0

    if-eqz v22, :cond_1cc

    new-instance v19, Landroid/support/v7/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1aa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15c .. :try_end_1aa} :catch_13c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15c .. :try_end_1aa} :catch_1ac

    goto/16 :goto_100

    :catch_1ac
    move-exception v11

    const-string/jumbo v22, "AccountTypePrefLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Couldn\'t load preferences.xml file from "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v9, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15b

    :cond_1cc
    const/4 v13, 0x0

    goto/16 :goto_100

    :cond_1cf
    if-eqz v13, :cond_1e8

    move-object/from16 v15, p2

    const/4 v12, 0x0

    :try_start_1d4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_1d8
    if-ge v12, v8, :cond_1e8

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/Preference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1d8

    :cond_1e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settingslib/accounts/SnsAccountManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/accounts/SnsAccountManager;->getSSOAccountEntry(Ljava/lang/String;)Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;

    move-result-object v4

    if-eqz v4, :cond_15b

    move-object/from16 v15, p2

    const-string/jumbo v22, "snsSSORetry"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    if-eqz v16, :cond_216

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->addSSORetryPreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/content/Context;Lcom/android/settingslib/accounts/SnsAccountManager$SnsAccountEntry;)V
    :try_end_229
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d4 .. :try_end_229} :catch_13c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d4 .. :try_end_229} :catch_1ac

    goto/16 :goto_15b
.end method

.method public updatePreferenceIntents(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 12

    iget-object v5, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v5}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ge v0, v5, :cond_71

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v5, v3, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v5, :cond_1f

    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0, v5, p2, p3}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->updatePreferenceIntents(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V

    :cond_1f
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    new-instance v5, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;

    const-class v6, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f120fdb

    invoke-direct {v5, p0, v6, v7}, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;-><init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_43
    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_46
    iget-object v5, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/high16 v6, 0x10000

    invoke-virtual {v2, v1, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_58

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_b

    :cond_58
    const-string/jumbo v5, "account"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v5, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;

    invoke-direct {v5, p0, v2, p2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;-><init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_43

    :cond_71
    return-void
.end method

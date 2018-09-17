.class public Lcom/samsung/android/settings/wifi/WifiControlHistory;
.super Landroid/preference/PreferenceFragment;
.source "WifiControlHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiControlHistory$1;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static selectionArgs:Ljava/lang/String;


# instance fields
.field private mDateFormat:Ljava/text/DateFormat;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferenceCategory:Landroid/preference/PreferenceGroup;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    const-string/jumbo v0, "package_name!= \'system\' AND package_name!= \'android\' AND package_name!= \'com.android.systemui\' AND package_name!= \'com.android.settings\' AND package_name!= \'com.sec.android.easysettings\' AND package_name!= \'com.sec.android.app.SecSetupWizard\' AND package_name!= \'com.google.android.setupwizard\' AND package_name!= \'com.samsung.android.easysetup\' AND package_name!= \'com.sec.android.emergencymode.service\' AND package_name!= \'com.android.server.wifi.p2p\'"

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->selectionArgs:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiControlHistory$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory$1;-><init>(Lcom/samsung/android/settings/wifi/WifiControlHistory;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method private addPreferences(Ljava/lang/String;IJ)Landroid/preference/Preference;
    .registers 20

    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v12, :cond_20

    const-string/jumbo v12, "WifiControlHistory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "addPreferences, packageName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-string/jumbo v11, ""

    const-string/jumbo v10, ""

    const/4 v7, 0x0

    const-string/jumbo v12, "samsung.wifi.autowifi"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c9

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const v13, 0x7f121feb

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    :try_start_3d
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v13, "com.android.settings"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_45} :catch_ac

    move-result-object v7

    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    iput-object v12, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    iput-object v12, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mTimeFormat:Ljava/text/DateFormat;

    const-string/jumbo v6, ""

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/util/Date;->setTime(J)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v13, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " \u200e "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v13, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    packed-switch p2, :pswitch_data_134

    :goto_8e
    new-instance v9, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0d0247

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setLayoutResource(I)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v7}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-object v9

    :catch_ac
    move-exception v5

    const-string/jumbo v12, "WifiControlHistory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "addPreferences, NameNotFoundException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    return-object v12

    :cond_c9
    :try_start_c9
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_46

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_ed
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c9 .. :try_end_ed} :catch_f0

    move-result-object v7

    goto/16 :goto_46

    :catch_f0
    move-exception v5

    const-string/jumbo v12, "WifiControlHistory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "addPreferences, NameNotFoundException"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    return-object v12

    :pswitch_10d
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const v14, 0x7f12200e

    invoke-virtual {v12, v14, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8e

    :pswitch_120
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v13, v14

    const v14, 0x7f12200d

    invoke-virtual {v12, v14, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8e

    nop

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_120
        :pswitch_10d
    .end packed-switch
.end method

.method private setEmptyMessage()V
    .registers 4

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f12200f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;->setTitle(I)V

    if-eqz v0, :cond_2b

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v1, :cond_26

    const-string/jumbo v1, "WifiControlHistory"

    const-string/jumbo v2, "setEmptyMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPreferenceCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_2b
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "WifiControlHistory"

    const-string/jumbo v2, "insert"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f15013c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "control_applications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPreferenceCategory:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPreferenceCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "action_bar"

    const-string/jumbo v4, "id"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_4d
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v0, :cond_19

    const-string/jumbo v0, "WifiControlHistory"

    const-string/jumbo v1, "onOptionsItemSelected, home"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    const v1, 0x7f1217a2    # 1.9419E38f

    const v2, 0x7f120a59

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_34
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 12

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v0, :cond_22

    const-string/jumbo v0, "WifiControlHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceTreeClick, packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    const v1, 0x7f1217a2    # 1.9419E38f

    const v2, 0x7f120a58

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    const-string/jumbo v0, "samsung.wifi.autowifi"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f122096

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_53
    const/4 v0, 0x0

    return v0

    :cond_55
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f12020e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_53
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->updateHistory()V

    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    const v1, 0x7f1217a2    # 1.9419E38f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SAUtils;->insertLog(I)V

    return-void
.end method

.method public updateHistory()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPreferenceCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    const-string/jumbo v2, "content://com.samsung.server.wifi/control"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v8, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/samsung/android/settings/wifi/WifiControlHistory;->selectionArgs:Ljava/lang/String;

    const-string/jumbo v7, "time_stamp DESC"

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_3f

    const-string/jumbo v2, "WifiControlHistory"

    const-string/jumbo v4, "updateHistory, cursor is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->setEmptyMessage()V
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_2c} :catch_ad
    .catchall {:try_start_f .. :try_end_2c} :catchall_f8

    if-eqz v8, :cond_3e

    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "WifiControlHistory"

    const-string/jumbo v4, "updateHistory, close"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3e
    return-void

    :cond_3f
    :try_start_3f
    const-string/jumbo v2, "WifiControlHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateHistory, cursor count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", columns : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "package_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v2, "last_control"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v2, "time_stamp"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    :goto_84
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_10c

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->addPreferences(Ljava/lang/String;IJ)Landroid/preference/Preference;

    move-result-object v17

    if-eqz v17, :cond_d7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPreferenceCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_a9
    :goto_a9
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_ac} :catch_ad
    .catchall {:try_start_3f .. :try_end_ac} :catchall_f8

    goto :goto_84

    :catch_ad
    move-exception v9

    :try_start_ae
    const-string/jumbo v2, "WifiControlHistory"

    const-string/jumbo v4, "updateHistory, IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_ae .. :try_end_b7} :catchall_f8

    if-eqz v8, :cond_c9

    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v2, :cond_c6

    const-string/jumbo v2, "WifiControlHistory"

    const-string/jumbo v4, "updateHistory, close"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c9
    :goto_c9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPreferenceCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_d6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->setEmptyMessage()V

    :cond_d6
    return-void

    :cond_d7
    :try_start_d7
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v2, :cond_a9

    const-string/jumbo v2, "WifiControlHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateHistory, pref is null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/lang/IllegalStateException; {:try_start_d7 .. :try_end_f7} :catch_ad
    .catchall {:try_start_d7 .. :try_end_f7} :catchall_f8

    goto :goto_a9

    :catchall_f8
    move-exception v2

    if-eqz v8, :cond_10b

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v4, :cond_108

    const-string/jumbo v4, "WifiControlHistory"

    const-string/jumbo v5, "updateHistory, close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_108
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_10b
    throw v2

    :cond_10c
    if-eqz v8, :cond_c9

    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v2, :cond_11b

    const-string/jumbo v2, "WifiControlHistory"

    const-string/jumbo v4, "updateHistory, close"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_c9
.end method

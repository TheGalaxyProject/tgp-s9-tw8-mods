.class public final Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;
.super Landroid/preference/PreferenceFragment;
.source "BluetoothControlHistory.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$1;,
        Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;
    }
.end annotation


# static fields
.field private static CLAUSE_ONLY_3RD_PARTY_APP:Ljava/lang/String;

.field private static final DBG:Z


# instance fields
.field private mApplicationCategory:Landroid/preference/PreferenceGroup;

.field private mDateFormat:Ljava/text/DateFormat;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreenId:Ljava/lang/String;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTitleView:Landroid/widget/TextView;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->DBG:Z

    const-string/jumbo v0, "caller_name!= \'com.android.bluetooth\' AND caller_name!= \'com.android.nfc\' AND caller_name!= \'com.android.settings\' AND caller_name!= \'com.android.systemui\' AND caller_name!= \'com.samsung.android.easysetup\' AND caller_name!= \'com.samsung.android.oneconnect\' AND caller_name!= \'com.sec.android.easysettings\' AND caller_name!= \'com.sec.android.emergencymode.service\' AND caller_name!= \'com.samsung.android.bixby.agent\'"

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->CLAUSE_ONLY_3RD_PARTY_APP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method private addApplicationPreferences()V
    .registers 24

    const-string/jumbo v4, "content://com.samsung.bt.btservice/btservice"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v11, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->CLAUSE_ONLY_3RD_PARTY_APP:Ljava/lang/String;

    const-string/jumbo v9, "timestamp DESC"

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-nez v11, :cond_31

    const-string/jumbo v4, "BluetoothControlHistory"

    const-string/jumbo v6, "addApplicationPreferences :: query return null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_22} :catch_aa
    .catchall {:try_start_8 .. :try_end_22} :catchall_127

    if-eqz v11, :cond_30

    const-string/jumbo v4, "BluetoothControlHistory"

    const-string/jumbo v6, "addApplicationPreferences :: will be cursor close"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_30
    return-void

    :cond_31
    :try_start_31
    const-string/jumbo v4, "BluetoothControlHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addApplicationPreferences :: cursor count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Columns : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v11}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v4, "caller_name"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v4, "last_event"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v4, "timestamp"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    :goto_76
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_137

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    new-instance v12, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;

    move-object/from16 v0, v21

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;-><init>(Ljava/lang/String;IJ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->createApplicationPreference(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;)Landroid/preference/Preference;

    move-result-object v22

    if-eqz v22, :cond_10a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :goto_a6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a9
    .catch Ljava/lang/IllegalStateException; {:try_start_31 .. :try_end_a9} :catch_aa
    .catchall {:try_start_31 .. :try_end_a9} :catchall_127

    goto :goto_76

    :catch_aa
    move-exception v13

    :try_start_ab
    const-string/jumbo v4, "BluetoothControlHistory"

    const-string/jumbo v6, "addApplicationPreferences :: Occurs IllegalStateException"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_127

    if-eqz v11, :cond_c2

    const-string/jumbo v4, "BluetoothControlHistory"

    const-string/jumbo v6, "addApplicationPreferences :: will be cursor close"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_c2
    :goto_c2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v20

    if-ltz v20, :cond_104

    const/16 v4, 0xa

    move/from16 v0, v20

    if-gt v0, v4, :cond_147

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "com.android.bluetooth"

    const-string/jumbo v7, "BCAC"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v6, v7, v8}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    :goto_eb
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f121718

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1209c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v10}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_104
    if-nez v20, :cond_109

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->addNoApplicationsPreference()V

    :cond_109
    return-void

    :cond_10a
    :try_start_10a
    const-string/jumbo v4, "BluetoothControlHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addApplicationPreferences :: Can\'t get Application Information about : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Ljava/lang/IllegalStateException; {:try_start_10a .. :try_end_126} :catch_aa
    .catchall {:try_start_10a .. :try_end_126} :catchall_127

    goto :goto_a6

    :catchall_127
    move-exception v4

    if-eqz v11, :cond_136

    const-string/jumbo v6, "BluetoothControlHistory"

    const-string/jumbo v7, "addApplicationPreferences :: will be cursor close"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_136
    throw v4

    :cond_137
    if-eqz v11, :cond_c2

    const-string/jumbo v4, "BluetoothControlHistory"

    const-string/jumbo v6, "addApplicationPreferences :: will be cursor close"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c2

    :cond_147
    const/16 v4, 0x14

    move/from16 v0, v20

    if-gt v0, v4, :cond_16e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "com.android.bluetooth"

    const-string/jumbo v7, "BCAC"

    const-string/jumbo v8, "10to20"

    invoke-static {v4, v6, v7, v8}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1207b7

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_eb

    :cond_16e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "com.android.bluetooth"

    const-string/jumbo v7, "BCAC"

    const-string/jumbo v8, "more20"

    invoke-static {v4, v6, v7, v8}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1207b8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_eb
.end method

.method private addNoApplicationsPreference()V
    .registers 4

    const-string/jumbo v1, "BluetoothControlHistory"

    const-string/jumbo v2, "addNoApplicationsPreference :: Does not found Bluetooth control application"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120411

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->setMainText(Ljava/lang/String;)V

    const v1, 0x7f130339

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothNoItemPreference;->setMainTextAppearance(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private createApplicationPreference(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;)Landroid/preference/Preference;
    .registers 13

    const/4 v10, 0x0

    sget-boolean v6, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->DBG:Z

    if-eqz v6, :cond_23

    const-string/jumbo v6, "BluetoothControlHistory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createApplicationPreference :: package name is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const-string/jumbo v5, ""

    const-string/jumbo v4, ""

    const/4 v2, 0x0

    :try_start_2a
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getLastEvent()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getLastEventTime()J

    move-result-wide v8

    invoke-direct {p0, v6, v8, v9}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getBtControlHistory(IJ)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_5d

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_5c} :catch_7d

    move-result-object v2

    :cond_5d
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d01ec

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-object v3

    :catch_7d
    move-exception v1

    const-string/jumbo v6, "BluetoothControlHistory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createApplicationPreference :: Occurs NameNotFoundException about "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10
.end method

.method private getBtControlHistory(IJ)Ljava/lang/String;
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v3, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->DBG:Z

    if-eqz v3, :cond_2b

    const-string/jumbo v3, "BluetoothControlHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBtControlSummary :: event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Timestamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTimeFormat:Ljava/text/DateFormat;

    const-string/jumbo v2, ""

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/util/Date;->setTime(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \u200e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_9c

    const-string/jumbo v3, "BluetoothControlHistory"

    const-string/jumbo v4, "getBtControlSummary :: Does not have on/off history"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7a
    return-object v2

    :pswitch_7b
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const v5, 0x7f12040e

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7a

    :pswitch_8b
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const v5, 0x7f12040d

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7a

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_7b
    .end packed-switch
.end method

.method private refreshApplicationPreferences()V
    .registers 3

    const-string/jumbo v0, "BluetoothControlHistory"

    const-string/jumbo v1, "refreshApplicationPreferences :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->addApplicationPreferences()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "action_bar"

    const-string/jumbo v7, "id"

    const-string/jumbo v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_34

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    const-string/jumbo v4, "BluetoothControlHistory"

    const-string/jumbo v5, "onActivityCreated() :: toolbar is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :cond_3e
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "right_pane_toolbar"

    const-string/jumbo v7, "id"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_85

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_6d
    if-ge v0, v2, :cond_33

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_82

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_33

    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    :cond_85
    const-string/jumbo v4, "BluetoothControlHistory"

    const-string/jumbo v5, "onActivityCreated() :: toolbar is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public onBluetoothStateChanged(I)V
    .registers 5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_8

    const/16 v0, 0xc

    if-ne p1, v0, :cond_2c

    :cond_8
    const-string/jumbo v0, "BluetoothControlHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChanged :: Bluetooth State change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", it will update list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->refreshApplicationPreferences()V

    :cond_2c
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 3

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150031

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "applications_list"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121720

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    const-string/jumbo v0, "BluetoothControlHistory"

    const-string/jumbo v1, "onDestroyView::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    const-string/jumbo v0, "BluetoothControlHistory"

    const-string/jumbo v1, "onDestroyView:: mTitleView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 2

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 3

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 2

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :goto_7
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    nop

    :pswitch_data_1e
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_10
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 12

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "BluetoothControlHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceTreeClick :: Launch Application info about"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.bluetooth"

    const-string/jumbo v2, "BSCA"

    invoke-static {v0, v1, v2, v8}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f12020e

    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v7
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->refreshApplicationPreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreenId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_35
    const-string/jumbo v0, "BluetoothControlHistory"

    const-string/jumbo v1, "onCreate() :: mLocalManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .registers 2

    return-void
.end method

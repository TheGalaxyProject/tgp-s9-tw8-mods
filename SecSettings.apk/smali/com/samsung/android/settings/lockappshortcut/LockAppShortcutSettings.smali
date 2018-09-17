.class public Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockAppShortcutSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$1;,
        Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$2;,
        Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

.field appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

.field private isLeftShortcut:Z

.field private isRightShortcut:Z

.field private final mAppShortcutObserver:Landroid/database/ContentObserver;

.field private mCurrentHeaderView:Landroid/view/View;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isLeftShortcut:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isRightShortcut:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Landroid/support/v7/preference/SecPreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->updateUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mCurrentHeaderView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$1;-><init>(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mAppShortcutObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;-><init>(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private isTmobile()Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "skt_phone20_settings"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_14

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private updateUI()V
    .registers 13

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mCurrentHeaderView:Landroid/view/View;

    if-eqz v7, :cond_1d

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v7, "LockAppShortcutSettings"

    const-string/jumbo v8, "refreshUI()"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e4

    const v7, 0x7f0d0184

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    :goto_3c
    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->setHeaderView(Landroid/view/View;Z)V

    iput-object v5, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mCurrentHeaderView:Landroid/view/View;

    const v7, 0x7f0a07a6

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v7

    if-eqz v7, :cond_57

    const v7, 0x7f080408

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_57
    const v7, 0x7f0a07a7

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v7, 0x7f0a07a8

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    invoke-direct {v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;-><init>()V

    const/4 v9, 0x1

    invoke-static {v7, v9, v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;ILcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    invoke-direct {v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;-><init>()V

    const/4 v9, 0x3

    invoke-static {v7, v9, v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;ILcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isLeftShortcut:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isRightShortcut:Z

    iget-boolean v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isLeftShortcut:Z

    if-nez v7, :cond_ee

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    const v8, 0x7f121b7d

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_ab
    iget-boolean v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isRightShortcut:Z

    if-nez v7, :cond_13b

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    const v8, 0x7f121b7d

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_b7
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    if-eqz v7, :cond_c9

    iget-boolean v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isLeftShortcut:Z

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_c9

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-boolean v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_189

    :cond_c9
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_cd
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    if-eqz v7, :cond_df

    iget-boolean v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isRightShortcut:Z

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_df

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-boolean v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_192

    :cond_df
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_e3
    return-void

    :cond_e4
    const v7, 0x7f0d0183

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_3c

    :cond_ee
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    if-eqz v7, :cond_f8

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    if-nez v7, :cond_101

    :cond_f8
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    const v8, 0x7f120fe8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_ab

    :cond_101
    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f8

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-boolean v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-nez v7, :cond_130

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v10, v10, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f120fe9

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_ab

    :cond_130
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_ab

    :cond_13b
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    if-eqz v7, :cond_145

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    if-nez v7, :cond_14f

    :cond_145
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    const v8, 0x7f120fe8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_b7

    :cond_14f
    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_145

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-boolean v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-nez v7, :cond_17e

    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v10, v10, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f120fe9

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b7

    :cond_17e
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b7

    :cond_189
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_cd

    :cond_192
    iget-object v7, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v7, v7, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e3
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1145

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f150089

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v2, "left_shortcut"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v2, "right_shortcut"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnLeft:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_29
    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mShortcutOnRight:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_32
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_application_shortcut"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    :cond_4c
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->isTmobile()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->lockScreenShortcutDefault(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_application_shortcut"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_66
    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mAppShortcutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AppShortcuts"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->updateUI()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_application_shortcut"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mAppShortcutObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "AppShortcuts"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

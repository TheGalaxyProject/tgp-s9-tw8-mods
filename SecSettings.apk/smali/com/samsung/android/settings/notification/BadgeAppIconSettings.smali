.class public Lcom/samsung/android/settings/notification/BadgeAppIconSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BadgeAppIconSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/BadgeAppIconSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mBadgeDescription:Lcom/samsung/android/settings/UnclickablePreference;

.field private mBadgeDescriptionLayout:Lcom/android/settings/applications/LayoutPreference;

.field private mBadgePreview:Lcom/android/settings/applications/LayoutPreference;

.field private mContext:Landroid/content/Context;

.field private mDescImage:Landroid/widget/ImageView;

.field private mHomescreenNotiPreivew:Landroid/support/v14/preference/SecSwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initBadgeDescription()V
    .registers 5

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeDescriptionLayout:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a022c

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    const v3, 0x7f0804b6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    const v3, 0x7f0804b5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2b
.end method

.method private setEnabledBadgePrefs(Z)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/RadioPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/RadioPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_23
    return-void
.end method

.method private updateBadgeDescription()V
    .registers 5

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeDescription:Lcom/samsung/android/settings/UnclickablePreference;

    if-eqz v2, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f121359

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f12135a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeDescription:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_32
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_4a

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mDescImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$2;-><init>(Lcom/samsung/android/settings/notification/BadgeAppIconSettings;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_4a
    return-void
.end method

.method private updateBadgeTypePref(IZ)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    if-eqz p2, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->setBadgeAppIconType(Landroid/content/Context;I)V

    :goto_10
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updatePreviewUI(I)V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_10

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    if-eqz p2, :cond_27

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->setBadgeAppIconType(Landroid/content/Context;I)V

    goto :goto_10

    :cond_27
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_10
.end method

.method private updatePreviewUI(I)V
    .registers 8

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgePreview:Lcom/android/settings/applications/LayoutPreference;

    const v4, 0x7f0a066a

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3e

    if-nez p1, :cond_d0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isNewMessageClientInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_77

    const-string/jumbo v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0804bd

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0804be

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e

    :cond_60
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0804bc

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e

    :cond_77
    const-string/jumbo v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_97

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0804b8

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e

    :cond_97
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0804b9

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e

    :cond_b8
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0804b7

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3e

    :cond_d0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isNewMessageClientInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11b

    const-string/jumbo v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_eb

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_103

    :cond_eb
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0804c0

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3e

    :cond_103
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0804bf

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3e

    :cond_11b
    const-string/jumbo v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12e

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_146

    :cond_12e
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0804bb

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3e

    :cond_146
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0804ba

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3e
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0xfd2

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f15002b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "badge_description"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeDescription:Lcom/samsung/android/settings/UnclickablePreference;

    const-string/jumbo v0, "badge_description_layout"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgeDescriptionLayout:Lcom/android/settings/applications/LayoutPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->initBadgeDescription()V

    const-string/jumbo v0, "app_icon_number"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconNumber:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "app_icon_dot"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mAppIconDot:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "badge_preview"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mBadgePreview:Lcom/android/settings/applications/LayoutPreference;

    const-string/jumbo v0, "homescreen_noti_preview"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 11

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "homescreen_noti_preview"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "home_show_notification_enabled"

    if-eqz v2, :cond_24

    move v3, v4

    :goto_20
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_23
    :goto_23
    return v4

    :cond_24
    move v3, v5

    goto :goto_20

    :cond_26
    const-string/jumbo v3, "app_icon_number"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    if-nez v2, :cond_32

    return v5

    :cond_32
    invoke-direct {p0, v5, v4}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeTypePref(IZ)V

    return v4

    :cond_36
    const-string/jumbo v3, "app_icon_dot"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v2, :cond_48

    return v5

    :cond_48
    invoke-direct {p0, v4, v4}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeTypePref(IZ)V

    goto :goto_23
.end method

.method public onResume()V
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SecNotiUtils;->isEnabledBadgeAppIcon(Landroid/content/Context;)Z

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->setEnabledBadgePrefs(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeDescription()V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/SecNotiUtils;->getBadgeAppIconType(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeTypePref(IZ)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "home_show_notification_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_58

    :goto_33
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_57

    :cond_52
    iget-object v3, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mHomescreenNotiPreivew:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_57
    return-void

    :cond_58
    move v3, v4

    goto :goto_33
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/notification/SecNotiUtils;->setEnableBadgeAppIcon(Landroid/content/Context;Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->setEnabledBadgePrefs(Z)V

    return-void
.end method

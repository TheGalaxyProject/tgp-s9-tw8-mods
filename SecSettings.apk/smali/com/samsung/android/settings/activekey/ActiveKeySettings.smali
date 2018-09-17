.class public Lcom/samsung/android/settings/activekey/ActiveKeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ActiveKeySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCurrentHeaderView:Landroid/view/View;

.field private mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

.field private mLongPress:Landroid/support/v7/preference/PreferenceScreen;

.field private mOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

.field private mShortPress:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    return-void
.end method

.method private getXCoverKeyDescString()Ljava/lang/String;
    .registers 11

    const-string/jumbo v0, "&#8226 "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f12223c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f12223d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f12223e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f12223f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f122240

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f122241

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "<br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "<br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "<br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "<br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private updateDescriptionUI()V
    .registers 9

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f0d0028

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0a0042

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getXCoverKeyDescString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_31
    const v5, 0x7f0a0041

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "poseidonlteuc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f080606

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_60
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->setHeaderView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    return-void

    :cond_66
    const v5, 0x7f12223b

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_31

    :cond_71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f1200d7

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f120579

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_31
.end method

.method private updatePressActionItems()V
    .registers 12

    const v10, 0x7f12223a

    const v9, 0x7f122237

    const v8, 0x7f120210

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "short_press_app"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "short_press_app"

    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v5

    if-eqz v5, :cond_c9

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "short_press_app_battery_conserve"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "short_press_app_battery_conserve"

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_35
    const-string/jumbo v5, "ActiveKeySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shortpress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "ActiveKeySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "longpress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_91

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    :cond_91
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v5

    if-eqz v5, :cond_e3

    if-eqz v3, :cond_dd

    const-string/jumbo v5, "torch/torch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dd

    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :goto_a7
    if-eqz v1, :cond_b2

    const-string/jumbo v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_115

    :cond_b2
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v5

    if-eqz v5, :cond_102

    if-eqz v0, :cond_fc

    const-string/jumbo v5, "torch/torch"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fc

    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :goto_c8
    return-void

    :cond_c9
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "long_press_app"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "long_press_app"

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_35

    :cond_dd
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_a7

    :cond_e3
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "short_press_app"

    const-string/jumbo v7, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a7

    :cond_f6
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_a7

    :cond_fc
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_c8

    :cond_102
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "long_press_app"

    const-string/jumbo v7, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_c8

    :cond_115
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_c8
.end method

.method private updatePressActionItemsGridViewConcept()V
    .registers 13

    const v11, 0x7f120fe9

    const v10, 0x7f120fe8

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v4, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-nez v4, :cond_48

    :cond_16
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    const v5, 0x7f121b7d

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :goto_1e
    invoke-static {v0, v9}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v4, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-nez v4, :cond_88

    :cond_28
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    const v5, 0x7f121b7d

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :goto_30
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v4, :cond_47

    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v4, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-nez v4, :cond_ca

    :cond_3f
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

    const v5, 0x7f121b7d

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_47
    :goto_47
    return-void

    :cond_48
    const-string/jumbo v4, ""

    iget-object v5, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_62

    const-string/jumbo v4, ""

    iget-object v5, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    :cond_62
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v4, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1e

    :cond_68
    iget-boolean v4, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v4, :cond_80

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v7, v6, v8

    invoke-virtual {v5, v11, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1e

    :cond_80
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1e

    :cond_88
    const-string/jumbo v4, ""

    iget-object v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    iget-object v4, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a2

    const-string/jumbo v4, ""

    iget-object v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    :cond_a2
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v4, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_30

    :cond_a8
    iget-boolean v4, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v4, :cond_c1

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v7, v6, v8

    invoke-virtual {v5, v11, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_30

    :cond_c1
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_30

    :cond_ca
    const-string/jumbo v4, ""

    iget-object v5, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    iget-object v4, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_e4

    const-string/jumbo v4, ""

    iget-object v5, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_eb

    :cond_e4
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v4, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_47

    :cond_eb
    iget-boolean v4, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v4, :cond_104

    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v7, v6, v8

    invoke-virtual {v5, v11, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_47

    :cond_104
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_47
.end method


# virtual methods
.method public getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v10, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v7, "ActiveKeySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "db: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_29

    const-string/jumbo v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    :cond_29
    return-object v2

    :cond_2a
    const/16 v7, 0x2f

    invoke-virtual {p1, v7, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    invoke-virtual {p1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :try_start_3f
    const-string/jumbo v7, "short_press_app_battery_conserve"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x280

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    :goto_57
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_63
    return-object v2

    :cond_64
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_72} :catch_74

    move-result-object v4

    goto :goto_57

    :catch_74
    move-exception v3

    const-string/jumbo v7, "ActiveKeySettings"

    const-string/jumbo v8, "cannot find app name !"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1db0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updateDescriptionUI()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKeyGridViewConcept()Z

    move-result v0

    if-eqz v0, :cond_41

    const v0, 0x7f15000f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    :goto_f
    const-string/jumbo v0, "short_press_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "long_press_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "double_press_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "active_key_on_lockscreen_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_41
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v0

    if-eqz v0, :cond_4e

    const v0, 0x7f150143

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    goto :goto_f

    :cond_4e
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v0

    if-eqz v0, :cond_5b

    const v0, 0x7f150144

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    goto :goto_f

    :cond_5b
    const v0, 0x7f150010

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    goto :goto_f
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "ActiveKeySettings"

    const-string/jumbo v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Landroid/support/v14/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "active_key_on_lockscreen"

    if-eqz v0, :cond_1e

    move v1, v2

    :cond_1e
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_22
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 6

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKeyGridViewConcept()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_d
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.activekey.AppList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pressed_type"

    const-string/jumbo v2, "short"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_35
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.activekey.AppList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pressed_type"

    const-string/jumbo v2, "long"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.settings.ACTIVE_KEY_CLEAR"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKeyGridViewConcept()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v2

    if-eqz v2, :cond_46

    :cond_22
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updatePressActionItemsGridViewConcept()V

    :goto_25
    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "active_key_on_lockscreen"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_39

    const/4 v1, 0x1

    :cond_39
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v1, "ActiveKeySettings"

    const-string/jumbo v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_46
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updatePressActionItems()V

    goto :goto_25
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    const-string/jumbo v0, "ActiveKeySettings"

    const-string/jumbo v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

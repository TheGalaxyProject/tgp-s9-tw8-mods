.class public Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
.super Landroid/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;,
        Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field public static final CSC_ENABLE_WECHAT_WIFI:Z

.field private static final STATE_GIGA_NONE:[I

.field private static final STATE_GIGA_SECURED:[I

.field private static final STATE_METERED:[I

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static final STATE_WECHAT:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field private volatile mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mChildId:J

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mCurrentIconSet:I

.field private mDefaultIconResId:I

.field private mForSavedNetworks:Z

.field private final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private mId:J

.field private mIsOllehGigaAp:Z

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mPasspointTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mWifiBadge:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [I

    sget v1, Lcom/android/settingslib/R$attr;->state_encrypted:I

    aput v1, v0, v3

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    new-array v0, v4, [I

    sget v1, Lcom/android/settingslib/R$attr;->state_metered:I

    aput v1, v0, v3

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    new-array v0, v3, [I

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_NONE:[I

    new-array v0, v5, [I

    sget v1, Lcom/android/settingslib/R$attr;->state_wifi_giga:I

    aput v1, v0, v3

    sget v1, Lcom/android/settingslib/R$attr;->state_encrypted:I

    aput v1, v0, v4

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_GIGA_SECURED:[I

    new-array v0, v4, [I

    sget v1, Lcom/android/settingslib/R$attr;->state_wifi_giga:I

    aput v1, v0, v3

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_GIGA_NONE:[I

    new-array v0, v4, [I

    sget v1, Lcom/android/settingslib/R$attr;->state_wifi_wechat:I

    aput v1, v0, v3

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_WECHAT:[I

    new-array v0, v4, [I

    sget v1, Lcom/android/settingslib/R$attr;->wifi_signal:I

    aput v1, v0, v3

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    const-string/jumbo v0, "WeChatWiFi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Wifi_ConfigSocialSvcIntegrationn"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->CSC_ENABLE_WECHAT_WIFI:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    aput v1, v0, v3

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    aput v1, v0, v4

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    aput v1, v0, v5

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mIsOllehGigaAp:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mId:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mWifiBadge:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mChildId:J

    new-instance v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mIsOllehGigaAp:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mId:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mWifiBadge:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mChildId:J

    new-instance v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    sget v0, Lcom/android/settingslib/R$layout;->wifi_preference:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setLayoutResource(I)V

    iput-object p3, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput-boolean p5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    iput p4, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->wifi_preference_badge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->refresh()V

    :cond_51
    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;Z)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    return-void
.end method

.method private postNotifyChanged()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_b
    return-void
.end method

.method private safeSetDefaultIcon()V
    .registers 2

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setIcon(I)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method private updateTitle(Landroid/widget/TextView;)V
    .registers 10

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v5, :cond_1e

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_5a

    :cond_1e
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$color;->wifi_ap_connecting:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<font color="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_59
    return-void

    :cond_5a
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v5, :cond_1e

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v5, :cond_1e

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v5, :cond_6a

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_b0

    :cond_6a
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$color;->highlight_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "#ff"

    const-string/jumbo v7, "#"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<font color="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_59

    :cond_b0
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_59
.end method

.method private validateIconSet()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    if-eq v0, v2, :cond_2f

    :cond_e
    const-string/jumbo v0, "AccessPointPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current icon is invalid, update icon for wechat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v0

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    if-eq v0, v2, :cond_e

    :cond_3b
    const-string/jumbo v0, "KTT"

    sget-object v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isOllehGigaAp()Z

    move-result v0

    if-eqz v0, :cond_74

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_74

    const-string/jumbo v0, "AccessPointPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current icon is invalid, update icon for giga ap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_74
    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9a

    const-string/jumbo v0, "AccessPointPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current icon is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_9a
    return v2
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method public getChildId()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mChildId:J

    return-wide v0
.end method

.method public getId()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mId:J

    return-wide v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .registers 13

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    if-nez p2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getLayoutResource()I

    move-result v6

    invoke-virtual {p1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    :cond_f
    const v6, 0x1020006

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v6, 0x1020016

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    const v6, 0x1020010

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v6, :cond_52

    if-eqz v1, :cond_35

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_35
    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_44

    iget-boolean v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v6, :cond_4a

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mPasspointTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_44
    :goto_44
    if-eqz v3, :cond_49

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_49
    return-object v4

    :cond_4a
    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    sget v7, Lcom/android/settingslib/R$string;->wifi_empty_list_wifi_on:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_44

    :cond_52
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_7c

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v2

    if-gez v2, :cond_60

    const/4 v2, 0x5

    :cond_60
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7c

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_7c
    :goto_7c
    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_89

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v6, :cond_89

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->updateTitle(Landroid/widget/TextView;)V

    :cond_89
    if-eqz v3, :cond_a3

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_ae

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a3
    :goto_a3
    return-object v4

    :cond_a4
    const-string/jumbo v6, "AccessPointPreference"

    const-string/jumbo v7, "icon is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    :cond_ae
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a3
.end method

.method protected notifyChanged()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    :goto_d
    return-void

    :cond_e
    invoke-super {p0}, Landroid/preference/Preference;->notifyChanged()V

    goto :goto_d
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    if-gez v1, :cond_3a

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_17
    :goto_17
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_34
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3a
    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_17
.end method

.method public refresh()V
    .registers 15

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v7, :cond_1c

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v7, :cond_f1

    :cond_1c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settingslib/R$color;->highlight_text_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "#ff"

    const-string/jumbo v9, "#"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<font color="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_67
    iget-object v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v3

    iget-object v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getBadge()I

    move-result v6

    const/4 v2, 0x0

    const-string/jumbo v7, "KTT"

    sget-object v8, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_85

    iget-object v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isOllehGigaAp()Z

    move-result v2

    :cond_85
    iget v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    if-ne v3, v7, :cond_8d

    iget v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mWifiBadge:I

    if-eq v6, v7, :cond_fc

    :cond_8d
    :goto_8d
    iput v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    iput v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mWifiBadge:I

    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mIsOllehGigaAp:Z

    iget v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->notifyChanged()V

    :cond_9b
    invoke-virtual {p0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_ca

    new-array v7, v13, [Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v8, v7, v10

    const-string/jumbo v8, ","

    aput-object v8, v7, v11

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    :cond_ca
    if-ltz v3, :cond_f0

    sget-object v7, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v7, v7

    if-ge v3, v7, :cond_f0

    new-array v7, v13, [Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v8, v7, v10

    const-string/jumbo v8, ","

    aput-object v8, v7, v11

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    :cond_f0
    return-void

    :cond_f1
    iget-object v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_67

    :cond_fc
    sget-boolean v7, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->CSC_ENABLE_WECHAT_WIFI:Z

    if-nez v7, :cond_8d

    const-string/jumbo v7, "KTT"

    sget-object v8, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9b

    iget-boolean v7, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mIsOllehGigaAp:Z

    if-eq v2, v7, :cond_9b

    goto/16 :goto_8d
.end method

.method public setChildId(J)V
    .registers 4

    iput-wide p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mChildId:J

    return-void
.end method

.method public setPasspointTitle(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/TtsSpan$TelephoneBuilder;

    invoke-direct {v1, p1}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mPasspointTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mPasspointTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2e

    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mPasspointTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2e
    return-void
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->-wrap0(Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    :cond_12
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->validateIconSet()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_38

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_38

    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->CSC_ENABLE_WECHAT_WIFI:Z

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_WECHAT:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    :goto_29
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-nez v1, :cond_77

    if-eqz v0, :cond_77

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    const-string/jumbo v1, "KTT"

    sget-object v2, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isOllehGigaAp()Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_5f

    sget-object v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_GIGA_SECURED:[I

    :goto_58
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    goto :goto_29

    :cond_5f
    sget-object v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_GIGA_NONE:[I

    goto :goto_58

    :cond_62
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_74

    sget-object v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    :goto_6e
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    iput v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    goto :goto_29

    :cond_74
    sget-object v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_NONE:[I

    goto :goto_6e

    :cond_77
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->safeSetDefaultIcon()V

    goto :goto_38
.end method

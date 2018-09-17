.class public Lcom/android/settings/language/PhoneLanguagePreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "PhoneLanguagePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "phone_language"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/language/PhoneLanguagePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-le v1, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settings/language/PhoneLanguagePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getLocaleFeatureProvider()Lcom/android/settings/localepicker/LocaleFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/localepicker/LocaleFeatureProvider;->getLocaleNames()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

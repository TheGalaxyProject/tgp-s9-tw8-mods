.class public Lcom/android/systemui/tuner/OtherPrefs;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "OtherPrefs.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4

    const v0, 0x7f16000c

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/OtherPrefs;->addPreferencesFromResource(I)V

    return-void
.end method

.class public Lcom/android/settings/dashboard/ExpandPreference;
.super Landroid/support/v7/preference/Preference;
.source "ExpandPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/ExpandPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/ExpandPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/ExpandPreference;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const v0, 0x7f0d00fb

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/ExpandPreference;->setLayoutResource(I)V

    const v0, 0x7f0801e8

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/ExpandPreference;->setIcon(I)V

    const v0, 0x7f120109

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/ExpandPreference;->setTitle(I)V

    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/ExpandPreference;->setOrder(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    return-void
.end method
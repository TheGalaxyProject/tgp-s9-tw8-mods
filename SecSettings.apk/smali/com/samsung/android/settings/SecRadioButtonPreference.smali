.class public Lcom/samsung/android/settings/SecRadioButtonPreference;
.super Landroid/support/v7/preference/SecCheckBoxPreference;
.source "SecRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/SecCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    const v0, 0x7f0d0214

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setLayoutResource(I)V

    const v0, 0x7f0d0238

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    :cond_9
    return-void
.end method

.method public setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;

    return-void
.end method

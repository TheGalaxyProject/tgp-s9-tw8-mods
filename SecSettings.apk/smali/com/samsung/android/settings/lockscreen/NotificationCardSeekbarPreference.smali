.class public Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "NotificationCardSeekbarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private isTextColorInverseEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarDescText:Landroid/widget/RelativeLayout;

.field private shouldInvertTextColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0228

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v2, 0x7f0a05c4

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v2, 0x7f0a06fe

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBarDescText:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "lock_noticard_opacity"

    const/16 v5, 0x2d

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    rsub-int/lit8 v4, v0, 0x4b

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "lockscreen_minimizing_notification"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_64

    const/4 v2, 0x1

    :goto_4f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBarDescText:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_66

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_5d
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->updateSeekBarDescVisible()V

    return-void

    :cond_64
    move v2, v3

    goto :goto_4f

    :cond_66
    const v2, 0x3ecccccd    # 0.4f

    goto :goto_5d
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_noticard_opacity"

    rsub-int/lit8 v2, p2, 0x4b

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_noticard_opacity"

    rsub-int/lit8 v3, v0, 0x4b

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0381

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->updateSeekBarDescVisible()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBarDescText:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBarDescText:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_11

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_10
    return-void

    :cond_11
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_d
.end method

.method public updateSeekBarDescVisible()V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "notification_text_color_inversion"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_44

    move v1, v2

    :goto_12
    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->isTextColorInverseEnabled:Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "white_lockscreen_wallpaper"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_46

    const/4 v0, 0x1

    :goto_24
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x4b

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-static {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->shouldInvertTextColor(FZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->shouldInvertTextColor:Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->mSeekBarDescText:Landroid/widget/RelativeLayout;

    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->isTextColorInverseEnabled:Z

    if-eqz v2, :cond_48

    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->shouldInvertTextColor:Z

    if-eqz v2, :cond_48

    :goto_40
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_44
    move v1, v3

    goto :goto_12

    :cond_46
    const/4 v0, 0x0

    goto :goto_24

    :cond_48
    const/16 v3, 0x8

    goto :goto_40
.end method

.class Lcom/android/server/VibratorService$SecSettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecSettingsObserver"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;I)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/VibratorService;->-get4()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iput p2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 10

    const/4 v5, 0x2

    const/4 v7, -0x2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get8(Lcom/android/server/VibratorService;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "mIsEnableIntensity is false (onChange)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)[I

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)[I

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    if-lt v1, v5, :cond_2d

    if-ge v3, v5, :cond_53

    :cond_2d
    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "magnitudeMaxLevel(onChange) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", touchMagnitudeMaxLevel(onChange) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_53
    iget v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    packed-switch v4, :pswitch_data_154

    :goto_58
    return-void

    :pswitch_59
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/server/VibratorService;->-get4()[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v5, v5, v6

    invoke-static {v4, v5, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v3, :cond_7c

    :goto_6f
    invoke-static {v4, v0}, Lcom/android/server/VibratorService;->-set6(Lcom/android/server/VibratorService;I)I

    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "Feedback magnitude has changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_7c
    iget-object v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v5}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)[I

    move-result-object v5

    aget v0, v5, v0

    goto :goto_6f

    :pswitch_85
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/server/VibratorService;->-get4()[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v5, v5, v6

    invoke-static {v4, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v1, :cond_a8

    :goto_9b
    invoke-static {v4, v0}, Lcom/android/server/VibratorService;->-set0(Lcom/android/server/VibratorService;I)I

    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "Call magnitude has changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_a8
    iget-object v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v5}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)[I

    move-result-object v5

    aget v0, v5, v0

    goto :goto_9b

    :pswitch_b1
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/server/VibratorService;->-get4()[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v5, v5, v6

    invoke-static {v4, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v1, :cond_d4

    :goto_c7
    invoke-static {v4, v0}, Lcom/android/server/VibratorService;->-set4(Lcom/android/server/VibratorService;I)I

    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "Notification magnitude has changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_d4
    iget-object v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v5}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)[I

    move-result-object v5

    aget v0, v5, v0

    goto :goto_c7

    :pswitch_dd
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get10(Lcom/android/server/VibratorService;)Z

    move-result v4

    if-nez v4, :cond_ef

    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "mIsSupportedE is false (onChange)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ef
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)[I

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    if-ge v2, v5, :cond_115

    const-string/jumbo v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_115
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/server/VibratorService;->-get4()[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v5, v5, v6

    invoke-static {v4, v5, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v0, v2, :cond_14b

    :goto_12b
    invoke-static {v4, v0}, Lcom/android/server/VibratorService;->-set2(Lcom/android/server/VibratorService;I)I

    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get9(Lcom/android/server/VibratorService;)Z

    move-result v4

    if-eqz v4, :cond_140

    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->-get7(Lcom/android/server/VibratorService;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->vibratorForceTouchIntensity(J)V

    :cond_140
    const-string/jumbo v4, "VibratorService"

    const-string/jumbo v5, "Force magnitude has changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    :cond_14b
    iget-object v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v5}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)[I

    move-result-object v5

    aget v0, v5, v0

    goto :goto_12b

    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_59
        :pswitch_85
        :pswitch_b1
        :pswitch_dd
    .end packed-switch
.end method

.method reload()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/VibratorService;->-get4()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

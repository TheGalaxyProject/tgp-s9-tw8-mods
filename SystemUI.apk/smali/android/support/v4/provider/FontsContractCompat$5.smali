.class final Landroid/support/v4/provider/FontsContractCompat$5;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic val$callerThreadHandler:Landroid/os/Handler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Landroid/support/v4/provider/FontRequest;


# virtual methods
.method public run()V
    .registers 12

    const/4 v10, 0x0

    const/4 v6, 0x0

    :try_start_2
    iget-object v7, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$context:Landroid/content/Context;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$request:Landroid/support/v4/provider/FontRequest;

    const/4 v9, 0x0

    invoke-static {v7, v9, v8}, Landroid/support/v4/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/support/v4/provider/FontRequest;)Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_a} :catch_25

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v7

    if-eqz v7, :cond_4d

    invoke-virtual {v3}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v6

    packed-switch v6, :pswitch_data_b4

    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$4;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$4;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_25
    move-exception v0

    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$1;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$1;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_33
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$2;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$2;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_40
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$3;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$3;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4d
    invoke-virtual {v3}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v2

    if-eqz v2, :cond_56

    array-length v7, v2

    if-nez v7, :cond_63

    :cond_56
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$5;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$5;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_63
    array-length v7, v2

    :goto_64
    if-ge v6, v7, :cond_91

    aget-object v1, v2, v6

    invoke-virtual {v1}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v8

    if-eqz v8, :cond_8e

    invoke-virtual {v1}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v4

    if-gez v4, :cond_81

    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$6;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$6;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_80
    return-void

    :cond_81
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$7;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8, v4}, Landroid/support/v4/provider/FontsContractCompat$5$7;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_80

    :cond_8e
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    :cond_91
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$context:Landroid/content/Context;

    invoke-static {v6, v10, v2}, Landroid/support/v4/provider/FontsContractCompat;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v5

    if-nez v5, :cond_a6

    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$8;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8}, Landroid/support/v4/provider/FontsContractCompat$5$8;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_a6
    iget-object v6, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v7, Landroid/support/v4/provider/FontsContractCompat$5$9;

    iget-object v8, p0, Landroid/support/v4/provider/FontsContractCompat$5;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {v7, p0, v8, v5}, Landroid/support/v4/provider/FontsContractCompat$5$9;-><init>(Landroid/support/v4/provider/FontsContractCompat$5;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_33
        :pswitch_40
    .end packed-switch
.end method

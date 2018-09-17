.class final Lcom/samsung/android/settings/boostmode/BoostUtils$2;
.super Ljava/lang/Object;
.source "BoostUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostUtils;->showTurnOffPSM(Landroid/content/Context;Landroid/app/AlertDialog;IZLjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$setGLbyUs:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .registers 3

    iput-boolean p1, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$2;->val$setGLbyUs:Z

    iput-object p2, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$2;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$2;->val$setGLbyUs:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostUtils$2;->val$mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setGameLancherEnabled(Landroid/content/Context;Z)V

    :cond_a
    return-void
.end method

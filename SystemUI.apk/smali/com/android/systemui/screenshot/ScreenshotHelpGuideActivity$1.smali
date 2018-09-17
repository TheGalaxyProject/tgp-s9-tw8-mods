.class Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity$1;
.super Ljava/lang/Object;
.source "ScreenshotHelpGuideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;->showHelpGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity$1;->this$0:Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotHelpGuideActivity;->finish()V

    return-void
.end method

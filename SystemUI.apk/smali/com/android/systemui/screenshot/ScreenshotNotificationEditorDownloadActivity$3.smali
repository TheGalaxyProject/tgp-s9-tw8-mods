.class Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$3;
.super Ljava/lang/Object;
.source "ScreenshotNotificationEditorDownloadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->showPhotoEditorDownloadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity$3;->this$0:Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;->-wrap0(Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

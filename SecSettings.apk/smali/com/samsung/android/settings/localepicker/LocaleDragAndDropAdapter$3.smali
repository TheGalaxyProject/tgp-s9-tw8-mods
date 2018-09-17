.class Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->showSetDefaultLocaleDialog(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

.field final synthetic val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->-get0(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

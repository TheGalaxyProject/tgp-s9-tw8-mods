.class final Lcom/android/settings/LinkifyUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "LinkifyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/settings/LinkifyUtils$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/LinkifyUtils$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/LinkifyUtils$1;->val$listener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/LinkifyUtils$1;->val$listener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    invoke-interface {v0}, Lcom/android/settings/LinkifyUtils$OnClickListener;->onClick()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method

.class public abstract Landroid/support/v17/leanback/database/CursorMapper;
.super Ljava/lang/Object;
.source "CursorMapper.java"


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bind(Landroid/database/Cursor;)Ljava/lang/Object;
.end method

.method protected abstract bindColumns(Landroid/database/Cursor;)V
.end method

.method public convert(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/database/CursorMapper;->mCursor:Landroid/database/Cursor;

    if-eq p1, v0, :cond_b

    iput-object p1, p0, Landroid/support/v17/leanback/database/CursorMapper;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Landroid/support/v17/leanback/database/CursorMapper;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/database/CursorMapper;->bindColumns(Landroid/database/Cursor;)V

    :cond_b
    iget-object v0, p0, Landroid/support/v17/leanback/database/CursorMapper;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/database/CursorMapper;->bind(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

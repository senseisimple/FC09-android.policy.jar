.class public Lcom/android/internal/policy/impl/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardWindowController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardHost:Landroid/widget/FrameLayout;

.field private mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

.field private final mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

.field private mNeedsInput:Z

.field private mScreenOn:Z

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mViewManager:Landroid/view/ViewManager;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewProperties;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 7
    .parameter "context"
    .parameter "viewManager"
    .parameter "callback"
    .parameter "keyguardViewProperties"
    .parameter "updateMonitor"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 64
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 66
    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 67
    iput-object p4, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    .line 69
    iput-object p5, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized hide()V
    .registers 6

    .prologue
    .line 260
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_24

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v1, :cond_24

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 266
    .local v0, lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->removeMessageHander()V

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 268
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/internal/policy/impl/KeyguardViewManager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewBase;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 278
    .end local v0           #lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;
    :cond_24
    monitor-exit p0

    return-void

    .line 260
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isPlayOwnSound()Z
    .registers 2

    .prologue
    .line 227
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_d

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->isPlayOwnSound()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    .line 230
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_b

    .line 227
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSecureLockMode()Z
    .registers 2

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_d

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->isSecureLockMode()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v0

    .line 221
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 218
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isShowing()Z
    .registers 2

    .prologue
    .line 284
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBatteryLowWarn(I)V
    .registers 3
    .parameter "level"

    .prologue
    .line 203
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_a

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onBatteryLowWarn(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 206
    :cond_a
    monitor-exit p0

    return-void

    .line 203
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBatteryStatusHide()V
    .registers 2

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_a

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onBatteryStatusHide()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 199
    :cond_a
    monitor-exit p0

    return-void

    .line 196
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBatteryStatusIndicate(I)V
    .registers 3
    .parameter "action"

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_a

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onBatteryStatusInform(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 192
    :cond_a
    monitor-exit p0

    return-void

    .line 189
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .registers 2

    .prologue
    .line 172
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_d

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onScreenTurnedOff()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 176
    :cond_d
    monitor-exit p0

    return-void

    .line 172
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn()V
    .registers 2

    .prologue
    .line 180
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_d

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onScreenTurnedOn()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 184
    :cond_d
    monitor-exit p0

    return-void

    .line 180
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_a

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->reset()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 168
    :cond_a
    monitor-exit p0

    return-void

    .line 165
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNeedsInput(Z)V
    .registers 5
    .parameter "needsInput"

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1b

    .line 149
    if-eqz p1, :cond_1c

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 156
    :goto_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    :cond_1b
    return-void

    .line 153
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_12
.end method

.method public declared-synchronized show()V
    .registers 8

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v1, :cond_40

    .line 100
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewManager$1;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    .line 102
    const/4 v6, -0x1

    .line 103
    .local v6, stretch:I
    const v4, 0x10100800

    .line 108
    .local v4, flags:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    if-nez v1, :cond_1c

    .line 109
    const/high16 v1, 0x2

    or-int/2addr v4, v1

    .line 111
    :cond_1c
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d4

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 114
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 115
    const v1, 0x103006e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 117
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 119
    const-string v1, "Keyguard"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #flags:I
    .end local v6           #stretch:I
    :cond_40
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-nez v1, :cond_76

    .line 127
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-interface {v1, v2, v3, p0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 128
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    const v2, 0x1020179

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setId(I)V

    .line 129
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setCallback(Lcom/android/internal/policy/impl/KeyguardViewCallback;)V

    .line 131
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    if-eqz v1, :cond_76

    .line 138
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onScreenTurnedOn()V

    .line 142
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_76
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->requestFocus()Z
    :try_end_81
    .catchall {:try_start_1 .. :try_end_81} :catchall_83

    .line 144
    monitor-exit p0

    return-void

    .line 97
    :catchall_83
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized verifyUnlock()V
    .registers 2

    .prologue
    .line 211
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->show()V

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->verifyUnlock()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 213
    monitor-exit p0

    return-void

    .line 211
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeWhenReadyTq(I)Z
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_b

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->wakeWhenReadyTq(I)V

    .line 248
    const/4 v0, 0x1

    .line 251
    :goto_a
    return v0

    .line 250
    :cond_b
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "mKeyguardView is null in wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    goto :goto_a
.end method
